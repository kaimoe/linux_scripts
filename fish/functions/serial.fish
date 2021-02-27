# Defined in - @ line 1
function serial --wraps='screen /dev/ttyUSB0 115200' --description 'alias serial=screen /dev/ttyUSB0 115200'
  screen /dev/ttyUSB0 115200 $argv;
end
