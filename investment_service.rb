require 'date'
require './interest_calculator.rb'
require './repayment_calculator.rb'
require './yearly_amount_calculator.rb'


# Configuration
INTEREST_RATE = 0.05
REPAYMENT_PERCENTAGE = 0.25
REPAYMENT_INTERVAL_IN_YEARS = 1

# main function
class InvestmentService
  def initialize(hash = {})
    @previous_date = hash[:initial_date]
    @current_date = hash[:first_repayment_date]
    @current_amount = hash[:initial_amount]
    @years_to_calculate = hash[:years_to_calculate]
    @interest_rate = hash[:interest_rate]
  end

  def calculate  
    (0..@years_to_calculate).each do 
      @interest = calculate_interest()
      @repayment = calculate_repayment()
      @new_amount = calculate_yearly_amount()
      
      @current_amount = @new_amount
      @previous_date = @current_date
      @current_date = @current_date.next_year
  
    end
    @current_amount
  end
  
  private
  def calculate_interest
    interest_calculator = InterestCalculator.new(
        amount: @current_amount, 
        interest_rate: INTEREST_RATE,
        start_date: @previous_date, 
        end_date: @current_date
      )
    interest_calculator.compute_interest
  end

  def calculate_repayment
    repayment_calculator = RepaymentCalculator.new(amount: @current_amount, repayment: REPAYMENT_PERCENTAGE)
    repayment_calculator.compute_repayment
  end

  def calculate_yearly_amount
    yearly_amount_calculator = YearlyAmountCalculator.new(amount: @current_amount, repayment: @repayment, interest: @interest )
    yearly_amount_calculator.compute_yearly_amount
  end
end
