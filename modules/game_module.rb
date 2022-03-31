module GameModule
  def capture_input(request_text)
    print "#{request_text}: "
    gets.chomp
  end

  def add_new_game_details
    puts "\n-------------------------------"
    puts "\nENTER GAME DETAILS\n\n"

    game_name = capture_input('Input game name')
    publish_date = capture_input('Enter publish date')
    last_played_at = capture_input('Input Last played date')
    multiplayer = capture_input('Is the game Multiplayer? (enter Y for "Yes" evertyhing else will be treated as "No"')

    multiplayer = multiplayer == 'Y' || true

    @app.add_game([game_name, last_played_at, multiplayer, publish_date])
    
    puts "\nNew Game Added!"
    puts "\n-------------------------------"
  end
end
