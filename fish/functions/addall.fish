# Defined in - @ line 1
function addall --wraps='git add *' --description 'alias addall git add *'
  git add * $argv;
end
