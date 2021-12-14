require './portagon.rb'

RSpec.describe Solution do
  describe "#main" do
    it "returns 17501.83 with the test data" do
      solution = Solution.new
      expected = 17501.83
      expect(solution.main).to eq(expected)
    end
  end
end
