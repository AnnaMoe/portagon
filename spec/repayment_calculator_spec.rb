require './interest_calculator.rb'

RSpec.describe RepaymentCalculator do
  describe "#compute_repayment" do
    it "calculates the repayment" do
      repayment_calculator = RepaymentCalculator.new(
        amount: 1000, 
        repayment: 0.25
      )
      repayment_calculator.compute_repayment
      
      expect(repayment_calculator.compute_repayment).to eq(250)
    end
  end
end
