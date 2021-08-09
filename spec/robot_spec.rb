require_relative "../lib/tt_robot/robot"
require_relative "../lib/tt_robot/output"

RSpec.describe Robot do
  subject(:robot) do
    output = Output.new
    described_class.new(output)
  end
  context "initialization" do
    it "should be an instance of robot" do
      expect(robot).to be_a Robot
    end
    it "should have an inital position of nil" do
      expect(robot.position).to eq(nil)
    end
    it "should have an inital direction of nil" do
      expect(robot.direction).to eq(nil)
    end
  end

  describe ".change_position" do
    it "should set a new position for robot" do
      expect(robot.change_position_to({ x: 1, y: 1 })).to eq({ x: 1, y: 1 })
    end
  end

  describe ".change_direction" do
    it "should set a new direction for robot" do
      expect(robot.change_direction_to("NORTH")).to eq("NORTH")
    end
  end

  describe ".has_position" do
    it "should report false when robot hasnt been placed" do
      expect(robot.has_position).to eq(false)
    end
    it "should report true when robot has position" do
      robot.change_position_to({ x: 1, y: 1 })
      expect(robot.has_position).to eq(true)
    end
  end

  describe ".place" do
    it "should set the robot position" do
      command_hash = { position: { x: 6, y: 6 }, direction: "NORTH" }
      robot.place(command_hash)
      expect(robot.position).to eq({ x: 6, y: 6 })
    end
    it "should set the robot direction" do
      command_hash = { position: { x: 6, y: 6 }, direction: "NORTH" }
      robot.place(command_hash)
      expect(robot.direction).to eq("NORTH")
    end
  end
end
