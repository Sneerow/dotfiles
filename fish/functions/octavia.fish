function octavia --wraps='docker run -i --rm -v $(pwd):/home/octavia-project --network host --env-file $OCTAVIA_ENV_FILE --user $(id -u):$(id -g) airbyte/octavia-cli:0.42.1' --description 'alias octavia docker run -i --rm -v $(pwd):/home/octavia-project --network host --env-file $OCTAVIA_ENV_FILE --user $(id -u):$(id -g) airbyte/octavia-cli:0.42.1'
  docker run -i --rm -v $(pwd):/home/octavia-project --network host --env-file $OCTAVIA_ENV_FILE --user $(id -u):$(id -g) airbyte/octavia-cli:0.42.1 $argv
        
end
