import flixel.input.gamepad.FlxGamepadInputID;
import funkin.options.PlayerSettings;
import funkin.backend.system.Controls;
import funkin.backend.system.Controls.Control;

//this script is optional
//this wont be needed whenever CNE has proper gamepad support, but just so the menus can be used for now

var init = false;
function postStateSwitch()
{
	if (init)
		return;

	init = true;
	PlayerSettings.solo.controls.removeGamepad(0);
	PlayerSettings.solo.controls.addGamepadLiteral(0, [
		Control.ACCEPT => [FlxGamepadInputID.A],
		Control.BACK => [FlxGamepadInputID.B],
		Control.UP => [FlxGamepadInputID.DPAD_UP, FlxGamepadInputID.LEFT_STICK_DIGITAL_UP],
		Control.DOWN => [FlxGamepadInputID.DPAD_DOWN, FlxGamepadInputID.LEFT_STICK_DIGITAL_DOWN],
		Control.LEFT => [FlxGamepadInputID.DPAD_LEFT, FlxGamepadInputID.LEFT_STICK_DIGITAL_LEFT],
		Control.RIGHT => [FlxGamepadInputID.DPAD_RIGHT, FlxGamepadInputID.LEFT_STICK_DIGITAL_RIGHT],
		Control.PAUSE => [FlxGamepadInputID.START],
		Control.RESET => [-100]
	]);
}