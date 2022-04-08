require 'rails_helper'

RSpec.describe Advice, type: :model do
  let(:user) { create :user }
  let(:doctor) { create :doctor }
  let(:time) { Time.now + 1.day }
  let(:appointment) { Appointment.create(user_id: user.id, doctor_id: doctor.id, date: time) }
  let(:body) { 'Some advice' }

  subject { described_class.new(doctor_id: doctor.id,
                                appointment_id: appointment.id,
                                body: body) }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is valid without a doctor_id" do
    subject.doctor_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a appointment_id" do
    subject.appointment_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a body" do
    subject.body = nil
    expect(subject).to_not be_valid
  end
end