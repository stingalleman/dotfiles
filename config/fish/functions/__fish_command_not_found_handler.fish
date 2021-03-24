function __fish_command_not_found_handler --on-event fish_command_not_found
  echo "command not found: '$argv'"
  return
end
