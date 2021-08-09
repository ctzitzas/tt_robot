class Robot
  attr_reader :direction, :position, :change_direction, :change_position, :robot_has_position, :output

  def initialize(output)
    @direction = nil
    @position = nil
    @output = output
  end

  def change_position_to(new_position)
    @position = new_position
  end

  def change_direction_to(new_direction)
    @direction = new_direction
  end

  def place(hash)
    @direction = hash[:direction]
    @position = hash[:position]
  end

  def has_position
    !@position.nil?
  end
end
