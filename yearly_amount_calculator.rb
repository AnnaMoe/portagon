class YearlyAmountCalculator
  def self.compute_yearly_amount(amount, repayment, interest)
    (amount + repayment + interest).round(2)
  end
end