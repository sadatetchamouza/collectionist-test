class OpeningHour < ApplicationRecord
  belongs_to :shop

  validates_presence_of :day_of_week

  def get_day_of_week
    I18n.t('date.day_names')[read_attribute(:day_of_week)]
  end
end
