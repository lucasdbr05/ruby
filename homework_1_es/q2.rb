def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  game[0][1] = game[0][1].upcase
  game[1][1] = game[1][1].upcase

  allowed_plays = ["P", "S", "R"].include?(game[0][1]) && ["P", "S", "R"].include?(game[1][1])
  raise NoSuchStrategyError unless allowed_plays
  

  loses_for = { 'P' => 'S', 'S' => 'R', 'R' => 'P' }

  if (loses_for[game[0][1]]==game[1][1])
      return game[1]
  else 
      return game[0]
  end    
end


def rps_tournament_winner(tornament) 
  if(tornament[0][0].class != Array)
    return rps_game_winner(tornament)
  end

  return rps_game_winner([rps_tournament_winner(tornament[0]), rps_tournament_winner(tornament[1])])
end

# A)
# puts(rps_game_winner([ [ "Kristen", "P" ], [ "Pam", "S" ], ["Nense", "S"] ]))
# puts(rps_game_winner([ [ "Kristen", "P" ], [ "Pam", "X" ],  ]))
puts(rps_game_winner([ [ "Kristen", "P" ], [ "Pam", "S" ], ]).inspect)
puts(rps_game_winner([ [ "Kristen", "S" ], [ "Pam", "S" ], ]).inspect)
puts(rps_game_winner([ [ "Kristen", "S" ], [ "Pam", "p" ], ]).inspect)
puts(rps_game_winner([ [ "Kristen", "R" ], [ "Pam", "P" ], ]).inspect)


# B)
puts("\n")
puts(rps_tournament_winner([
  [
    [ ["Kristen", "P"], ["Dave", "S"] ],
    [ ["Richard", "R"], ["Michael", "S"] ],
  ],
  [
    [ ["Allen", "S"], ["Omer", "P"] ],
    [ ["David E.", "R"], ["Richard X.", "P"] ]
  ]
]).inspect)