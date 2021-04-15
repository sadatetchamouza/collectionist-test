require 'rails_helper'

RSpec.describe Shop, type: :model do
  it { should respond_to(:name) }
  it { should have_db_column(:name).of_type(:string) }
  it { should validate_presence_of(:name) }
end
