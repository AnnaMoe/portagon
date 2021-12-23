class InterestCalculator
  def initialize(hash = {})
    @start_date = hash[:start_date]
    @end_date = hash[:end_date]
    @amount = hash[:amount]
    @interest_rate = hash[:interest_rate]
  end
  # The interest calculation method is act/act.
  # yearly calculation
  def compute_interest 
    days_count = days_apart(@start_date, @end_date)
    year_in_days = days_apart(@end_date.prev_year, @end_date)
    return (@amount * @interest_rate *  days_count / year_in_days).round(2)
  end

  private 
  def days_apart(start_date, end_date)
    (end_date - start_date).to_i
  end
end
