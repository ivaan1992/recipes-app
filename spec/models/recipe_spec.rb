require 'rails_helper'

RSpec.describe Recipe, type: :model do
  subject { Recipe.new(user_id: 1, name: 'Burguer', description: "it's an easy one") }

  before { subject.save }

  it 'cooking_time cannot be string' do
    subject.cooking_time = 'string'
    expect(subject).to_not be_valid
  end

  it 'preparation_time cannot be string' do
    subject.preparation_time = 'another string'
    expect(subject).to_not be_valid
  end

  it 'should be private by default' do
    expect(subject.public).to eql(false)
  end
end
