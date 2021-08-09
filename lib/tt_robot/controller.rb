require "optparse"
require_relative "robot"
require_relative "../commands/report"
require_relative "../commands/rotate"
require_relative "../commands/move"
require_relative "../commands/place"

class Controller
  def initialize
    output = Output.new
    @robot = Robot.new(output)
    @get_object = {
      "REPORT" => Report.new(@robot),
      "LEFT" => Rotate.new(@robot),
      "RIGHT" => Rotate.new(@robot),
      "MOVE" => Move.new(@robot),
      "PLACE" => Place.new(@robot)
    }
  end

  def run(command)
    if robot_can_attempt(command)
      command_object = @get_object[command[:command]]
      command_object.run(command)
    end
  end

  private

  def robot_can_attempt(hash)
    valid_command(hash) && (@robot.has_position || hash[:command] == "PLACE")
  end

  def valid_command(hash)
    hash[:command] == "PLACE" ||
      hash[:command] == "MOVE" ||
      hash[:command] == "REPORT" ||
      hash[:command] == "LEFT" ||
      hash[:command] == "RIGHT"
  end
end
