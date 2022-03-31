module GameModule
  def capture_input(request_text)
    print "#{request_text}: "
    gets.chomp
  end

  def add_new_game_details
    puts "\n-------------------------------"
    puts "\nENTER GAME DETAILS\n\n"

    game_name = capture_input('Input game name')
    last_played_at = capture_input('Input Last played date')
    multiplayer = capture_input('Is the game Multiplayer? (enter Y for "Yes" evertyhing else will be treated as "No"')

    multiplayer = multiplayer == 'Y' || true

    @app.add_game([game_name, last_played_at, multiplayer])

    puts "\nNew Game Added!"
    puts "\n-------------------------------"

    add_new_author_details
  end

  def add_new_author_details
    puts "\n-------------------------------"
    puts "\nENTER AUTHOR DETAILS\n\n"

    first_name = capture_input('Input Author Name')
    last_name = capture_input('Input Author Last Name')

    @app.add_author([first_name, last_name])
    puts "\nNew Author Added!"
    puts "\n-------------------------------"
  end
end
