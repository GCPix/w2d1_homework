class SportsTeam
  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, player_array, coach, total_points)
  @team_name = team_name
  @players = player_array
  @coach = coach
  @points = total_points
  end

  def add_player(player_name)
    @players.push(player_name)
  end

  def find_player_by_name(player_name)
    for player in @players
      if player == player_name

      end
      return player
    end
  end

  def update_score(result)
    if result == "win"
      @points+=50
    end

  end
end
