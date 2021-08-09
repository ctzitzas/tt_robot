require_relative "../modules/tt_robot"

class Command
  attr_reader :robot

  def initialize(robot)
    @robot = robot
  end
  include TT_Robot
end
