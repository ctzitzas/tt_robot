#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative "tt_robot/version"
require_relative "tt_robot/input"

input = Input.new
input.run
