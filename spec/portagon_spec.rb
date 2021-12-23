require './portagon.rb'

RSpec.describe Solution do
  describe "#main" do
    before do
     $stdin = StringIO.new("0.05")
    end

    after do
      $stdin = STDIN
    end

    it "returns 17501.83 with the test data" do
      solution = Solution.new
      expected = 17501.83
      expect(solution.main).to eq(expected)
    end
  end
end
