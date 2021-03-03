# Defined in - @ line 1
function push --wraps='git push -u origin main' --description 'alias push git push -u origin main'
  git push -u origin main $argv;
end
