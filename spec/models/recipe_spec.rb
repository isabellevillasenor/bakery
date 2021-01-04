require 'rails_helper'

describe Recipe do
  describe 'validations' do
    it { should validate_presence_of :name}
    it { should validate_numericality_of(:number_ingredients).is_greater_than(0) }
    it { should validate_numericality_of(:bake_time).is_greater_than(0) }
    it { should validate_numericality_of(:oven_temp).is_greater_than(0) }
  end
  
  describe 'relationships' do
    it { should belong_to :baker }
    it { should have_many :recipe_ingredients }
    it { should have_many(:ingredients).through(:recipe_ingredients)}
  end
end
