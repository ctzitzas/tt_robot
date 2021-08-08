class Robot
  attr_reader :direction, :position, :change_direction, :change_position, :robot_has_position
  def initialize()
    @direction = nil
    @position = nil
  end

  def change_position_to(new_position)
    @position = new_position
  end

  def change_direction_to(new_direction)
    @direction = new_direction
  end

  def set_position_direction(new_position, new_direction)
    @direction = new_direction
    @position = new_position
  end

  def robot_has_position
    @position != nil
  end
end