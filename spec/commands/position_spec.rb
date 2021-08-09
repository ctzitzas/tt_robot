require_relative "../../lib/commands/position"
require_relative "../../lib/tt_robot/output"

RSpec.describe Position do
  let(:output) { Output.new }
  let(:robot) { Robot.new(output) }
  let(:position) { described_class.new(robot) }

  context "initialization" do
    it "should be an instance of position" do
      expect(position).to be_a Position
    end
    it "should store a robot" do
      expect(position.robot).to eq(robot)
    end
  end

  describe ".destination_exists" do
    it "should return true when destination is in the board range" do
      expect(position.destination_exists({ x: 1, y: 1 })).to eq(true)
    end
    it "should return false when destination is out of the board range" do
      expect(position.destination_exists({ x: -1, y: 1 })).to eq(false)
    end
  end
end
