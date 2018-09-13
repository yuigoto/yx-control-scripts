/// @description Checks if input for "RIGHT" was just PRESSED
/// @function movementRightPressed
/// @param {real} slot Slot to check the input for

// Variables
var button, key, slot, slot_min, slot_max;

// Set slot
slot      = (os_type == os_android) ? 1 : 0;
slot_min  = (os_type == os_android) ? 1 : 0;
slot_max  = (os_type == os_android) ? 4 : 3;
// On Android this value starts at 1 because of bluetooth connections
// (more info on: https://goo.gl/JFs5e5)

if (
  argument_count == 1 && is_real( argument[0] )
  && argument[0] >= slot_min
  && argument[0] <= slot_max
) {
  slot = argument[0];
}

// Set input by slot for the player
if (os_type == os_android) {
  switch(slot) {
    case 1:
      button  = global.P1_PAD_RT;
      key     = global.P1_KEY_RT;
      break;
    case 2:
      button  = global.P2_PAD_RT;
      key     = global.P2_KEY_RT;
      break;
    case 3:
      button  = global.P3_PAD_RT;
      key     = global.P3_KEY_RT;
      break;
    case 4:
      button  = global.P4_PAD_RT;
      key     = global.P4_KEY_RT;
      break;
  }
} else {
  switch(slot) {
    case 0:
      button  = global.P1_PAD_RT;
      key     = global.P1_KEY_RT;
      break;
    case 1:
      button  = global.P2_PAD_RT;
      key     = global.P2_KEY_RT;
      break;
    case 2:
      button  = global.P3_PAD_RT;
      key     = global.P3_KEY_RT;
      break;
    case 3:
      button  = global.P4_PAD_RT;
      key     = global.P4_KEY_RT;
      break;
  }
}

return controlsStateCheck(slot, 1, key, button);
