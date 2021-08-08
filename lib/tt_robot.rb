# frozen_string_literal: true

require_relative "tt_robot/version"

module TT_Robot

  Move_values = {
      "NORTH" => {:x => 0, :y => 1},
      "SOUTH" => {:x => 0, :y => -1},
      "EAST" => {:x => 1, :y => 0},
      "WEST" => {:x => -1, :y => 0}
    }
  
end
