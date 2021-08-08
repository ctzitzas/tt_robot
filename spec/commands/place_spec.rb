require_relative '../../lib/commands/place'
RSpec.describe Place do
  let(:robot) {Robot.new}
  let(:place) {described_class.new(robot)}
  
  context 'initialization' do
    it 'should be an instance of place' do
      expect(place).to be_a Place
    end
    it 'should store a robot' do
      expect(place.robot).to eq(robot)
    end
  end

  context '.relocate_to' do
    it 'should change the robots position' do
      place.relocate_to({:x => 5, :y => 5}, "NORTH")
      expect(place.robot.position).to eq({:x => 5, :y => 5})
    end
    it 'should channge the robots direction' do
      place.relocate_to({:x => 1, :y => 1}, "SOUTH")
      expect(place.robot.direction).to eq("SOUTH")
    end

  end

end