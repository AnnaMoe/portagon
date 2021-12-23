class RepaymentCalculator
  def initialize(hash = {})
    @amount = hash[:amount]
    @repayment = hash[:repayment]
  end

  def compute_repayment
    (@amount * @repayment).round(2)
  end
end