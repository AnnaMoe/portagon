require 'date'

INTEREST_RATE = 0.05
REPAYMENT_PERCENTAGE = 0.25
INITIAL_AMOUNT = 1000
INITIAL_DATE = Date.new(2020, 2, 8)
FIRST_REPAYMENT_DATE = Date.new(2020, 6, 30)
REPAYMENT_INTERVAL_IN_YEARS = 1
YEARS_TO_CALCULATE = 10

def days_apart(start_date, future_date)
  (future_date - start_date).to_i
end

def interest_payment(amount, interest_rate, days_count, repayment_date) 
  year_in_days = days_apart(repayment_date.prev_year, repayment_date)
  #puts 'year in days'
  #puts year_in_days
  
  return (amount * interest_rate *  days_count / year_in_days).round(2)
end

previous_date = INITIAL_DATE
current_date = FIRST_REPAYMENT_DATE
current_amount = INITIAL_AMOUNT
for i in 0..YEARS_TO_CALCULATE do 
  days_count = days_apart(
    previous_date, 
    current_date
  )

  interest = interest_payment(
    current_amount, 
    INTEREST_RATE,
    days_count, 
    current_date
  )

  repayment = (current_amount * REPAYMENT_PERCENTAGE).round(2)

  new_amount = (current_amount + repayment + interest).round(2)

  puts "#{current_date} Previous Amount: #{current_amount}, Interest: #{interest}, Repayment: #{repayment}, New Amount: #{new_amount}"
  # update values
  current_amount = new_amount
  previous_date = current_date
  current_date = current_date.next_year
end
