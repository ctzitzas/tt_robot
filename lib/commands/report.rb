require_relative "command"
require_relative "../tt_robot/output"

class Report < Command
  def run(_hash)
    response = {
      position: @robot.position,
      direction: @robot.direction
    }
    robot.output.receiver(response)
    response
  end
end
