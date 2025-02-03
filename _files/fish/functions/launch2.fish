function launch2 --wraps='hyprctl dispatch exec env GDK_SCALE=2' --description 'alias launch2=hyprctl dispatch exec env GDK_SCALE=2'
  hyprctl dispatch exec env GDK_SCALE=2 $argv
        
end
