require_relative 'position'
class Place < Position
  def initialize(robot)
    super(robot)
  end

  def relocate_to(destination, direction)
    @@robot.set_position_direction(destination, direction)
  end
end