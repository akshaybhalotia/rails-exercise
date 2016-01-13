require 'rails_helper'

RSpec.describe "flights/index", type: :view do
  before(:each) do
    assign(:flights, [
      Flight.create!(
        :from => "From",
        :to => "To",
        :price => "9.99"
      ),
      Flight.create!(
        :from => "From",
        :to => "To",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of flights" do
    render
    assert_select "tr>td", :text => "From".to_s, :count => 2
    assert_select "tr>td", :text => "To".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
