require_relative 'command'

class Position < Command
  def initialize(robot)
    super(robot)
    @board = {
      :x_range => (0..4).to_a,
      :y_range => (0..4).to_a
    }
  end

  def destination_exists(hash)
    @board[:x_range].include?(hash[:x]) && @board[:y_range].include?(hash[:y])
  end
end