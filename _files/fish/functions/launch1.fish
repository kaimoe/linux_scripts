function launch1 --wraps='hyprctl dispatch exec env GDK_SCALE=1' --description 'alias launch1=hyprctl dispatch exec env GDK_SCALE=1'
  hyprctl dispatch exec env GDK_SCALE=1 $argv
        
end
