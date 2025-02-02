function compose-update --wraps='docker compose down && docker compose pull && docker compose up -d' --description 'alias compose-update=docker compose down && docker compose pull && docker compose up -d'
  docker compose down && docker compose pull && docker compose up -d $argv; 
end
