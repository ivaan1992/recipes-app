require 'rails_helper'

RSpec.describe Food, type: :model do
  subject { Food.new(user_id: 1, name: 'apple', measurement_unit: 'grams') }

  before { subject.save }

  it 'price cannot be string' do
    subject.price = 'apple'
    expect(subject).to_not be_valid
  end

  it 'quantity cannot be string' do
    subject.quantity = 'there'
    expect(subject).to_not be_valid
  end
end
