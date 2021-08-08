require_relative '../../lib/commands/command'

RSpec.describe Command do
  let(:robot) {Robot.new}
  let(:command) {described_class.new(robot)}

  context 'initialisation' do
    it 'should be an instance of command' do
      expect(command).to be_a Command
    end
    it 'should store a robot' do
      expect(command.robot).to eq(robot)
    end
  end
end