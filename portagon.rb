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

def interest_payment(amount, interest_rate, days_count, repayment_date) 
  year_in_days = days_apart(repayment_date.prev_year, repayment_date)
  puts 'year in days'
  puts year_in_days
  
  return amount * interest_rate *  days_count / year_in_days
end

days_count = days_apart(
  INITIAL_DATE, 
  FIRST_REPAYMENT_DATE
)
puts 'days_count'
puts days_count

puts interest_payment(
  INITIAL_AMOUNT, 
  INTEREST_RATE,
  days_count, 
  FIRST_REPAYMENT_DATE
) 