require 'date'

INTEREST_RATE = 0.05
REPAYMENT_PERCENTAGE = 0.25
INITIAL_AMOUNT = 1000
INITIAL_DATE = Date.new(2020, 2, 8)
FIRST_REPAYMENT_DATE = Date.new(2020, 6, 30)
REPAYMENT_INTERVAL_IN_YEARS = 1

def days_apart(start_date, future_date)
  (future_date - start_date).to_i
end
