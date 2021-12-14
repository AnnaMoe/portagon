require 'date'
require './interest_calculator.rb'
require './repayment_calculator.rb'
require './yearly_amount_calculator.rb'

# Configuration
INTEREST_RATE = 0.05
REPAYMENT_PERCENTAGE = 0.25
INITIAL_AMOUNT = 1000
INITIAL_DATE = Date.new(2020, 2, 8)
FIRST_REPAYMENT_DATE = Date.new(2020, 6, 30)
REPAYMENT_INTERVAL_IN_YEARS = 1
YEARS_TO_CALCULATE = 10

# main function
class Solution
  def initialize
    @previous_date = INITIAL_DATE
    @current_date = FIRST_REPAYMENT_DATE
    @current_amount = INITIAL_AMOUNT
  end

  def main  
    (0..YEARS_TO_CALCULATE).each do 
      interest = calculate_interest()

      repayment = RepaymentCalculator.compute_repayment(@current_amount, REPAYMENT_PERCENTAGE)

      new_amount = YearlyAmountCalculator.compute_yearly_amount(@current_amount, repayment, interest)

      puts "#{@current_date} Previous Amount: #{@current_amount}, Interest: #{interest}, Repayment: #{repayment}, New Amount: #{new_amount}"
      # update values
      @current_amount = new_amount
      @previous_date = @current_date
      @current_date = @current_date.next_year
    end
    @current_amount
  end
  
  private
  def calculate_interest
    InterestCalculator.compute_interest(
        @current_amount, 
        INTEREST_RATE,
        @previous_date, 
        @current_date
      )
  end
end
