require_relative "command"

class Rotate < Command
  attr_reader :new_direction

  def initialize(robot)
    super(robot)
    @direction = {
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

  def run(hash)
    new_direction = @direction[hash[:command]][@robot.direction]
    @robot.change_direction_to(new_direction)
  end
end
