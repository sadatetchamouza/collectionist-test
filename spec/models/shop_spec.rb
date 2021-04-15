require 'rails_helper'

RSpec.describe Shop, type: :model do
  it { should validate_presence_of(:name) }

  it { should have_many(:opening_hours) }
end
