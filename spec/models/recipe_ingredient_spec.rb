require 'rails_helper'

describe RecipeIngredient do
  describe 'relationships' do
    it { should belong_to :recipe }
    it { should belong_to :ingredient }
  end
end
