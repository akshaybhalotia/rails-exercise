require 'rails_helper'

RSpec.describe "flights/edit", type: :view do
  before(:each) do
    @flight = assign(:flight, Flight.create!(
      :from => "MyString",
      :to => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit flight form" do
    render

    assert_select "form[action=?][method=?]", flight_path(@flight), "post" do

      assert_select "input#flight_from[name=?]", "flight[from]"

      assert_select "input#flight_to[name=?]", "flight[to]"

      assert_select "input#flight_price[name=?]", "flight[price]"
    end
  end
end
