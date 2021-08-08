require_relative '../../lib/commands/rotate'
require_relative '../../lib/tt_robot'
require_relative '../../lib/tt_robot/robot'

RSpec.describe Rotate do
  let(:robot) {Robot.new}
  let(:rotate) {described_class.new(robot)}

  context 'initialization' do
    it 'should be an instance of Rotate' do
      expect(rotate).to be_a Rotate
    end
    it 'should store a robot' do
      expect(rotate.robot).to eq(robot)
    end
  end

  describe '.set_direction' do
    it 'should set robot direction' do
      robot.set_position_direction({:x => 0, :y => 0}, "NORTH")
      rotate.direction_to("LEFT")
      expect(robot.direction).to eq("EAST")
    end
  end
end