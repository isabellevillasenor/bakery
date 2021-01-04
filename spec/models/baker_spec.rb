require "rails_helper"

describe Baker do

  describe 'validations' do
    it { should validate_presence_of :name }
  end

  describe 'relationships' do
    it { should have_many :recipes }
  end
end
