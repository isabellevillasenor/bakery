require 'rails_helper'

describe Recipe do
  describe 'validations' do
  end
  
  describe 'relationships' do
    it { should belong_to :baker }
    it { should have_many :recipe_ingredients }
    it { should have_many(:ingredients).through(:recipe_ingredients)}
  end
end
