# Defined in - @ line 1
function clone --wraps='git clone' --description 'alias clone git clone'
  git clone $argv;
end
