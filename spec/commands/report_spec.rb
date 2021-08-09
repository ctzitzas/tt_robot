require_relative "../../lib/commands/report"
require_relative "../../lib/tt_robot/output"

RSpec.describe Report do
  let(:output) { Output.new }
  let(:robot) { Robot.new(output) }
  let(:report) { described_class.new(robot) }

  context "initialization" do
    it "should be an instance of Report" do
      expect(report).to be_a Report
    end
    it "should store a robot" do
      expect(report.robot).to eq(robot)
    end
  end

  describe ".report" do
    it "should report the robots current position and direction as a hash" do
      command_hash = { position: { x: 1, y: 1 }, direction: "NORTH" }
      robot.place(command_hash)
      expect(report.run(command_hash)).to eq({ position: { x: 1, y: 1 }, direction: "NORTH" })
    end
  end
end
