require_relative "../../lib/commands/command"
require_relative "../../lib/tt_robot/robot"
require_relative "../../lib/tt_robot/output"

RSpec.describe Command do
  let(:output) { Output.new }
  let(:robot) { Robot.new(output) }
  let(:command) { described_class.new(robot) }

  context "initialisation" do
    it "should be an instance of command" do
      expect(command).to be_a Command
    end
    it "should store a robot" do
      expect(command.robot).to eq(robot)
    end
  end
end
