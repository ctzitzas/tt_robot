require_relative "../../lib/commands/rotate"
require_relative "../../lib/tt_robot"
require_relative "../../lib/tt_robot/robot"
require_relative "../../lib/tt_robot/output"

RSpec.describe Rotate do
  let(:output) { Output.new }
  let(:robot) { Robot.new(output) }
  let(:rotate) { described_class.new(robot) }

  context "initialization" do
    it "should be an instance of Rotate" do
      expect(rotate).to be_a Rotate
    end
    it "should store a robot" do
      expect(rotate.robot).to eq(robot)
    end
  end

  describe ".set_direction" do
    it "should set robot direction" do
      command_hash = { position: { x: 3, y: 3 }, direction: "NORTH" }
      robot.place(command_hash)
      rotate.run({ command: "LEFT" })
      expect(robot.direction).to eq("EAST")
    end
  end
end
