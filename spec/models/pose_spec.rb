require 'rails_helper'

RSpec.describe Pose, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:sun_c) }

    it { should belong_to(:sun_b) }

    it { should belong_to(:sun_a) }

    it { should belong_to(:flow) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
