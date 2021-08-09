require_relative "../lib/tt_robot/controller"

RSpec.describe Controller do
  let(:output) { Output.new }
  let(:robot) { Robot.new(output) }
  let(:controller) { described_class.new }

  context "initialization" do
    it "should be an instance of command" do
      expect(controller).to be_a Controller
    end
  end
end
