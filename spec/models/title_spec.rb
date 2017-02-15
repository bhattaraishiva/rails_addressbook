require 'rails_helper'

RSpec.describe Title, type: :model do
  before(:all) do
    @title = Title.new(title: "Mr.")
  end
  it "should match with title" do
    expect(@title.title).to eq("Mr.")
  end
  it "should valid with valid attributes" do
    
  end
  it "is not valid without title" do
    @title = Title.new(title: nil)
    expect(@title).to_not be_valid
  end
end
