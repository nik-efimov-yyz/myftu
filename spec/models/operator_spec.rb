require "spec_helper"

describe Operator do
  subject { operator }
  let(:operator) { FactoryGirl.create :operator }

  # Associations
  it { should belong_to(:owner) }
  it { should have_one(:address) }
  it { should have_many(:airplanes) }
  it { should have_many(:aircraft_types).through(:airplanes) }
  it { should have_many(:pilots) }
  it { should have_many(:instructors) }
  it { should have_many(:dispatchers) }
  it { should have_many(:bookings) }
  it { should have_many(:flights) }

  # Validations
  it { should validate_presence_of(:owner) }
  it { should validate_presence_of(:name) }

  # Mass Assignment
  it { should_not allow_mass_assignment_of(:owner_id) }
  it { should_not allow_mass_assignment_of(:created_at) }
  it { should_not allow_mass_assignment_of(:updated_at) }


end