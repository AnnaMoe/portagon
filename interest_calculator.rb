class InterestCalculator
  # The interest calculation method is act/act.
  # yearly calculation
  def self.compute_interest(amount, interest_rate, start_date, end_date) 
    days_count = days_apart(start_date, end_date)
    year_in_days = days_apart(end_date.prev_year, end_date)
    
    return (amount * interest_rate *  days_count / year_in_days).round(2)
  end

  private 
  def self.days_apart(start_date, end_date)
    (end_date - start_date).to_i
  end
end
