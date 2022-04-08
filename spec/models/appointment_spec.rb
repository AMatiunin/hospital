require 'rails_helper'

RSpec.describe Appointment, type: :model do
  let(:doctor) { create :doctor }
  let(:user) { create :user }
  let(:time) { Time.now + 1.day }
  subject { described_class.new(user_id: user.id, doctor_id: doctor.id, date: time) }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a normal time" do
    subject.date = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a doctor_id" do
    subject.doctor_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid cause have limit" do
    LIMIT_OF_APPOINTMENTS = 0
    subject
    expect raise_error(Exceptions::LimitReached)
  end
end
