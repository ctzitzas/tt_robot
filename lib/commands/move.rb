require_relative 'position'
class Move < Position
  def initialize(robot)
    super(robot)
  end

  def forward
    @@robot.change_position_to(new_position)
  end

  private

  def new_position
    new_x = @@robot.position[:x] + TT_Robot::Move_values[@@robot.direction][:x]
    new_y = @@robot.position[:y] + TT_Robot::Move_values[@@robot.direction][:x]
    {:x => new_x, :y => new_y}
  end
end
