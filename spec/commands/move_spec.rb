require_relative "../../lib/commands/move"
require_relative "../../lib/tt_robot/output"

RSpec.describe Move do
  let(:output) { Output.new }
  let(:robot) { Robot.new(output) }
  let(:move) { described_class.new(robot) }

  context "initialization" do
    it "should be an instance of move" do
      expect(move).to be_a Move
    end
    it "should store a robot" do
      expect(move.robot).to eq(robot)
    end
  end

  describe ".forward" do
    it "should move the robot forward" do
      command_hash = { position: { x: 1, y: 1 }, direction: "NORTH", command: "MOVE" }
      robot.place(command_hash)
      move.run(command_hash)
      expect(move.robot.position).to eq({ x: 1, y: 2 })
    end
  end
end
