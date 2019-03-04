require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_hw2')

class TestTeam < Minitest::Test

  def test_team_name
    team = Team.new("whatever", ["1", "2", "3"], "timmy")
    assert_equal("whatever", team.team_name)
  end

def test_players
  team = Team.new("whatever", ["1", "2", "3"], "timmy")
  assert_equal(["1", "2", "3"], team.players)
end

def test_coach
  team = Team.new("whatever", ["1", "2", "3"], "timmy")
  assert_equal("timmy", team.coach)
end

def test_set_coach
  team = Team.new("whatever", ["1", "2", "3"], "timmy")
  team.coach = "Sheila"
  assert_equal("Sheila", team.coach)
end

def test_new_player
  team = Team.new("whatever", ["1", "2", "3"], "timmy")
  team.new_player("4")
  assert_equal(4, team.players.length)
end

def test_find_player
  team = Team.new("whatever", ["1", "2", "3"], "timmy")
  assert_equal("3", team.find_player("3"))
end

def points
  team = Team.new("whatever", ["1", "2", "3"], "timmy")
  assert_equals(1, team.points )
end

end
