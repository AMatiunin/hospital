require 'rails_helper'

RSpec.describe Doctor, type: :model do
  let(:profession) { Profession.create(name: 'lor') }
  subject { described_class.new(name: "name",
                                password: "123456",
                                phone: '1234567890',
                                profession_id: profession.id) }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is valid without a name" do
    subject.name = nil
    expect(subject).to be_valid
  end

  it "is invalid without a phone" do
    subject.phone = nil
    expect(subject).to_not be_valid
  end

  it "is invalid without a profession" do
    subject.profession_id = nil
    expect(subject).to_not be_valid
  end

  it "is invalid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with short password" do
    subject.password = '1234'
    expect(subject).to_not be_valid
  end
end