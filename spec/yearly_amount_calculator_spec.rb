require './interest_calculator.rb'

RSpec.describe YearlyAmountCalculator do
  describe "#compute_yearly_amount" do
    it "calculates the yearly amount" do
      yearly_amount_calculator = YearlyAmountCalculator.new(
        amount: 1000, 
        repayment: 100,
        interest: 100
      )
      yearly_amount_calculator.compute_yearly_amount
      
      expect(yearly_amount_calculator.compute_yearly_amount).to eq(1200)
    end
  end
end
