# Defined in - @ line 1
function hist --wraps='history | grep' --description 'alias hist history | grep'
  history | grep $argv;
end
