require "spec_helper"

describe Airplane do

  subject { airplane }
  let(:airplane) { create :airplane }

  # Associations
  it { should have_one(:operator) }
  it { should belong_to(:user) }
  it { should have_many(:bookings) }
  it { should have_many(:flights) }
  it { should have_many(:maintenance_records) }
  it { should have_many(:snags) }
  it { should have_many(:photos) }
  it { should have_many(:notes) }
  it { should belong_to(:maintenance_schedule) }
  it { should have_many(:restrictions) }

  # Validations
  it { should validate_presence_of(:company_id) }

end