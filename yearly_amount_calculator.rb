class YearlyAmountCalculator
  def initialize(hash = {})
    @amount = hash[:amount]
    @repayment = hash[:repayment]
    @interest = hash[:interest]
  end
  def compute_yearly_amount
    (@amount.to_f + @repayment.to_f + @interest.to_f).round(2)
  end
end