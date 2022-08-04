require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  subject { RecipeFood.new(recipe_id: 1, food_id: 1) }

  before { subject.save }

  it 'quantity cannot be string' do
    subject.quantity = 'string'
    expect(subject).to_not be_valid
  end
end
