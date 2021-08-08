require_relative '../../lib/commands/move'

RSpec.describe Move do
  let(:robot) {Robot.new}
  let(:move) {described_class.new(robot)}

  context 'initialization' do
    it 'should be an instance of move' do
      expect(move).to be_a Move
    end
    it 'should store a robot' do
      expect(move.robot).to eq(robot)
    end
  end

  describe '.forward' do
    it 'should move the robot forward' do
      robot.set_position_direction({:x => 1, :y => 1},"NORTH")
      move.forward
      expect(move.robot.position).to eq({:x => 1, :y => 1})
    end
    
  end
end