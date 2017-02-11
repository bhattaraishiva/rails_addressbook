require 'rails_helper'

RSpec.describe "titles/show", type: :view do
  before(:each) do
    @title = assign(:title, Title.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
