require_relative "position"
class Move < Position
  def run(_hash)
    @robot.change_position_to(destination) if destination_exists(destination)
  end

  private

  def destination
    new_x = @robot.position[:x] + TT_Robot::Move_values[@robot.direction][:x]
    new_y = @robot.position[:y] + TT_Robot::Move_values[@robot.direction][:y]
    { x: new_x, y: new_y }
  end
end
