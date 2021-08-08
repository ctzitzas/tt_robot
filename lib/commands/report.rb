require_relative 'command'

class Report < Command
  def initialize(robot)
    super(robot)
  end

  def current_status
    {
      :position => @@robot.position,
      :direction => @@robot.direction
    }
  end

end