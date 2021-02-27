# Defined in - @ line 1
function picoflash --wraps='rshell --buffer-size=512 -p /dev/ttyACM0' --description 'alias picoflash rshell'
  rshell --buffer-size=512 -p /dev/ttyACM0 "cp $argv /pyboard/main.py";
end
