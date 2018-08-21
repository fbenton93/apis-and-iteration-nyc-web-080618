#!/usr/bin/env ruby

require_relative "../lib/api_communicator.rb"
require_relative "../lib/command_line_interface.rb"

welcome
character = get_character_from_user
if get_character_movies_from_api(character) == nil
  puts "That character does not our records"
  load 'bin/run.rb'
end
show_character_movies(character)
