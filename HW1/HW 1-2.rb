class WrongNumberOfPlayersError <  StandardError ; end
class NoSuchStrategyError <  StandardError ; end

#Part 1

def letter_to_number(guess)
    if guess == 'R'
        return 0
    elsif guess == 'P'
        return 1
    else
        return 2
    end
end

def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2
    for player in game
        name, guess = player
        if !guess.match(/(R|P|S)/)
            raise NoSuchStrategyError            
        end
    end

    player1, player2 = game
    guess1 = player1[1]
    guess2 = player2[1]

    if letter_to_number(guess1) == letter_to_number(guess2) \
      || letter_to_number(guess1) == (letter_to_number(guess2)+1)%3
      return player1
    else
      return player2
    end
end

#Part 2

def rps_tournament_winner(tournament)
    roundA, roundB = tournament
    if roundA[0].class == String
        player1 = roundA
        player2 = roundB
    else
        player1 = rps_tournament_winner(roundA)
        player2 = rps_tournament_winner(roundB)
    end

    game = []
    game << player1
    game << player2
    return rps_game_winner(game)
end