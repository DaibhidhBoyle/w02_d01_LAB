class Team

  attr_reader :team_name, :points
  attr_accessor :coach, :players

    def initialize(team_name, players, coach)
      @team_name = team_name
      @players = players
      @coach = coach
    end

    def new_player(player)
      @players << player
    end

    def find_player(player_name)
      for player in @players
        if player == player_name
          return player
        end
      end
    return nil
  end
end

def points
  @points = 0
  "Are you a winner?"
  win = gets.chomp
  if win == "yes"
    @points += 1
  end
end
