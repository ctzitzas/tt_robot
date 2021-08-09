require_relative "../../lib/commands/place"
require_relative "../../lib/tt_robot/output"

RSpec.describe Place do
  let(:output) { Output.new }
  let(:robot) { Robot.new(output) }
  let(:place) { described_class.new(robot) }

  context "initialization" do
    it "should be an instance of place" do
      expect(place).to be_a Place
    end
    it "should store a robot" do
      expect(place.robot).to eq(robot)
    end
  end

  context ".place" do
    it "should change the robots position" do
      command_hash = { position: { x: 3, y: 3 }, direction: "NORTH" }
      place.run(command_hash)
      expect(robot.position).to eq({ x: 3, y: 3 })
    end
    it "should not change the robots position if out of bounds" do
      command_hash = { position: { x: 6, y: 6 }, direction: "NORTH" }
      place.run(command_hash)
      expect(robot.position).to eq(nil)
    end
    it "should channge the robots direction" do
      command_hash = { position: { x: 1, y: 3 }, direction: "SOUTH" }
      place.run(command_hash)
      expect(robot.direction).to eq("SOUTH")
    end
  end
end
