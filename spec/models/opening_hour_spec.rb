require 'rails_helper'

RSpec.describe OpeningHour, type: :model do
  it { should belong_to(:shop) }

  it { should validate_presence_of(:day_of_week) }
end
