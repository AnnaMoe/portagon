require './interest_calculator.rb'

RSpec.describe InterestCalculator do
  describe "#compute_interest" do
    it "calculates the interest" do
      interest_calculator = InterestCalculator.new(
        amount: 1000, 
        interest_rate: 0.05, 
        start_date: Date.new(2014, 01, 01),
        end_date: Date.new(2022, 01, 01)
      )
      interest_calculator.compute_interest
      
      expect(interest_calculator.compute_interest).to eq(400.27)
    end
  end
end
