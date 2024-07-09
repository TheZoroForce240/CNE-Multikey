import funkin.editors.ui.UIContextMenu.UIContextMenuOptionSpr;
import funkin.editors.charter.CharterBackdropGroup;
import funkin.editors.charter.CharterBackdropGroup.CharterBackdropDummy;
import funkin.editors.ui.UISubstateWindow;
import funkin.editors.ui.UIText;
import funkin.editors.ui.UINumericStepper;
import funkin.editors.ui.UIButton;
import funkin.editors.charter.Charter;
import funkin.editors.ui.UIContextMenu;

function postCreate()
{
	function addLabelOn(ui:UISprite, text:String)
		add(new UIText(ui.x, ui.y - 24, 0, text));

	var keyCountStepper = new UINumericStepper(windowSpr.x + 20, windowSpr.y + 30 + 16 + 38, Charter.keyCount, 1, 0, 1, Math.POSITIVE_INFINITY, 82);
	add(keyCountStepper);
	addLabelOn(keyCountStepper, "Key Count");

	var saveButton = new UIButton(windowSpr.x + windowSpr.bWidth - 20 - 125, windowSpr.y + windowSpr.bHeight - 16 - 32, "Save & Close", function() {
		Charter.keyCount = Std.parseInt(keyCountStepper.label.text);

		if (Charter.keyCount <= 0 || Math.isNaN(Charter.keyCount))
		{
			Charter.keyCount = 4;
		}
		//trace(Std.int(keyCountStepper.value));
		var gridBackdropIdx = Charter.instance.members.indexOf(Charter.instance.gridBackdrops);

		Charter.instance.remove(Charter.instance.gridBackdrops);
		Charter.instance.gridBackdrops = new CharterBackdropGroup(Charter.instance.strumLines);
		Charter.instance.gridBackdrops.notesGroup = Charter.instance.notesGroup;
		Charter.instance.insert(gridBackdropIdx, Charter.instance.gridBackdrops);

		//dunno if this dummy is nessessary but just doing it to be safe
		var gridBackdropDummyIdx = Charter.instance.members.indexOf(Charter.instance.gridBackdropDummy);

		Charter.instance.remove(Charter.instance.gridBackdropDummy);
		Charter.instance.gridBackdropDummy = new CharterBackdropDummy(Charter.instance.gridBackdrops);
		Charter.instance.insert(gridBackdropDummyIdx, Charter.instance.gridBackdropDummy);

		Charter.instance.gridBackdrops.cameras = Charter.instance.gridBackdropDummy.cameras = [Charter.instance.charterCamera];

		Charter.instance.gridBackdrops.createGrids(PlayState.SONG.strumLines.length);
		Charter.instance.refreshBPMSensitive();

		close();
	}, 125);
	add(saveButton);

	var closeButton = new UIButton(saveButton.x - 20, saveButton.y, "Close", function() {
		close();
	}, 125);
	add(closeButton);
	closeButton.color = 0xFFFF0000;
	closeButton.x -= closeButton.bWidth;
}