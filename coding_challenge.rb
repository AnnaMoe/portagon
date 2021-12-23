
# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

# write a method which return the sum of all two-digit numbers of an array

def solution(a)
  # write your code in Ruby 2.2
  a.select {|i| two_digits?(i)}.reduce(0) {|acc, e| acc + e}
end

def two_digits?(i)
  (i >= 10 && i <= 99) || (i >= -99 && i <= -10)
end

# model validations
class User < ActiveRecord::Base
  # validates_presence_of :name
  # Define the other validations here
  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates :title, inclusion: { in: %w(Mrs Ms Mr),
    message: "%{value} is not a valid title" }
  validates :age, numericality: { greater_than: 0, allow_nil: true }
  validates :phone_number, format: { with: /\+1\d{10}\z/,
    message: "Sorry, only US phone numbers are allowed" }
  validates :password, length: { in: 6..20 } 
  validates :password, confirmation: true
end
