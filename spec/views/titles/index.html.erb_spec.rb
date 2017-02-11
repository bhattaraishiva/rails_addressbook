require 'rails_helper'

RSpec.describe "titles/index", type: :view do
  before(:each) do
    assign(:titles, [
      Title.create!(
        :title => "Title"
      ),
      Title.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of titles" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
