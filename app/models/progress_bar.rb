class ProgressBar < ActiveRecord::Base
  validates_presence_of :message
  validates_numericality_of :percent,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 100
end
