class RepaymentCalculator
  def self.compute_repayment(amount, repayment)
    (amount * repayment).round(2)
  end
end