require('minitest/autorun')
require('minitest/rg')

require_relative('../team_class')

class Test_Team_class < Minitest::Test

  def setup
    @team = SportsTeam.new("Paisley Pirates", ["John", "Peter", "Max", "Stephen"], "Lisa", 0)
  end

  def test_get_team_name
    assert_equal("Paisley Pirates", @team.team_name)
  end
  def test_get_player_array
    assert_equal(["John", "Peter", "Max", "Stephen"], @team.players)
  end
  def test_get_coach
    assert_equal("Lisa", @team.coach)
  end

  def test_get_total_points
    assert_equal(0,@team.points)
  end
  def test_set_player_array
    @team.players = ["player1", "player2", "player3"]

    assert_equal(["player1", "player2", "player3"], @team.players)
  end

  def test_set_coach_name
    @team.coach = "Gillian"
    assert_equal("Gillian", @team.coach)
  end

  def test_set_total_points
    @team.points = 500

    assert_equal(500, @team.points)
  end

  def test_add_player
    @team.add_player("Frankie")

    assert_equal(["John", "Peter", "Max", "Stephen", "Frankie"], @team.players)
  end

  def test_find_player_by_name

    result = @team.find_player_by_name("John")
    assert_equal("John", result)
  end

  def test_update_team_score__win
    @team.update_score("win")
    assert_equal(50, @team.points)
  end

  def test_update_team_score__lose
    @team.update_score("lose")
    assert_equal(0, @team.points)
  end
end
