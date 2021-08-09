require_relative "../lib/tt_robot/input"

RSpec.describe Input do
  let(:input) { described_class.new }
  context "initialization" do
    it "should be an instance of input" do
      expect(input).to be_a Input
    end
  end
end
