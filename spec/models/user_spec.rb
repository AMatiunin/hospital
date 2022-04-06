require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new(name: "name",
                                password: "123456",
                                phone: '1234567890') }

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

  it "is invalid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with short password" do
    subject.password = '1234'
    expect(subject).to_not be_valid
  end
end