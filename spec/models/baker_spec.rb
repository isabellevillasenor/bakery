require "rails_helper"

describe Baker do
  describe 'relationships' do
    it { should have_many :recipes }
  end
end
