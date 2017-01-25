require 'rails_helper'

RSpec.describe Product, type: :model do
   it "doesn't allow a product's quantity to be negative" do
     macbook = FactoryGirl.build(:product, quantity: -1)
     expect(macbook).to_not be_valid
   end
end
