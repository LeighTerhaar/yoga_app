require 'rails_helper'

RSpec.describe SunA, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:poses) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
