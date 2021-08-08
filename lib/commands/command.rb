require_relative '../tt_robot'

class Command
  attr_reader :robot
  def initialize(robot)
    @@robot = robot
  end
  include TT_Robot
  def robot
    @@robot
  end
end