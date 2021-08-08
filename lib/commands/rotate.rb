require_relative 'command'

class Rotate < Command
  attr_reader :new_direction
  def initialize(robot)
    super(robot)
    @new_direction = nil
    @rotate = {
    "LEFT" => {
      "NORTH" => "EAST",
      "SOUTH" => "WEST",
      "EAST" => "NORTH",
      "WEST" => "SOUTH"
    },
    "RIGHT" => {
      "NORTH" => "EAST",
      "SOUTH" => "WEST",
      "EAST" => "SOUTH",
      "WEST" => "NORTH"
    }
  }
  end

  def direction_to(direction)
    new_direction = @rotate[direction][@@robot.direction]
    @@robot.change_direction_to(new_direction)
  end

end