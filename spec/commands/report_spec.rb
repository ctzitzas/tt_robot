require_relative '../../lib/commands/report'

RSpec.describe Report do
  let(:robot) {Robot.new}
  let(:report) {described_class.new(robot)}

  context 'initialization' do
    it 'should be an instance of Report' do
      expect(report).to be_a Report
    end
    it 'should store a robot' do
      expect(report.robot).to eq(robot)
    end
  end

  describe '.report' do
    it 'should report the robots curent position and direction as a hash' do
      robot.set_position_direction({:x => 1, :y => 1},"NORTH")
      expect(report.current_status).to eq({:position => {:x => 1, :y => 1}, :direction => "NORTH"})
    end
    
  end
end