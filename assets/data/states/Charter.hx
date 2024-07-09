import funkin.editors.ui.UIContextMenu.UIContextMenuOptionSpr;
import funkin.editors.ui.UISubstateWindow;
import funkin.editors.ui.UIText;
import funkin.editors.ui.UINumericStepper;
import funkin.editors.ui.UIButton;
import funkin.editors.charter.Charter;
import funkin.editors.ui.UIContextMenu;

function postCreate()
{
	topMenu[2].childs.push({
		label: "Change key count (in editor)",
		color: 0xFF959829, icon: 4,
		onCreate: function (button) {button.label.offset.x = button.icon.offset.x = -2;},
		onSelect: function(_) {

			//var saveButton:UIButton;
			//var closeButton:UIButton;
			//var keyCountStepper:UINumericStepper;

			var keyCountChangeSubstate = new UISubstateWindow(true, 'KeyCountSubstate');
			//keyCountChangeSubstate.scriptName = 'data/states/KeyCountSubstate';

			FlxG.sound.music.pause();
			Charter.instance.vocals.pause();

			keyCountChangeSubstate.winTitle = 'Edit key count';
			keyCountChangeSubstate.winWidth = 310; keyCountChangeSubstate.winHeight = 200;

			FlxG.state.openSubState(keyCountChangeSubstate);
		}
	});
}