class OpeningHour < ApplicationRecord
  belongs_to :shop

  validates_presence_of :day_of_week
end
