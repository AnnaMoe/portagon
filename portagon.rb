require 'date'
require './investment_service.rb'
# Configuration
INITIAL_AMOUNT = 1000
INITIAL_DATE = Date.new(2020, 2, 8)
FIRST_REPAYMENT_DATE = Date.new(2020, 6, 30)
YEARS_TO_CALCULATE = 10

# main function
class Solution
  def main  
    InvestmentService.new(
      initial_date: INITIAL_DATE, 
      first_repayment_date: FIRST_REPAYMENT_DATE, initial_amount: INITIAL_AMOUNT, 
      years_to_calculate: YEARS_TO_CALCULATE
    ).calculate()
  end
end
