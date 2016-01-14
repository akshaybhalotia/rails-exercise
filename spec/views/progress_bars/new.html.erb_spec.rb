require 'rails_helper'

RSpec.describe "progress_bars/new", type: :view do
  before(:each) do
    assign(:progress_bar, ProgressBar.new(
      :message => "MyString",
      :percent => "9.99"
    ))
  end

  it "renders new progress_bar form" do
    render

    assert_select "form[action=?][method=?]", progress_bars_path, "post" do

      assert_select "input#progress_bar_message[name=?]", "progress_bar[message]"

      assert_select "input#progress_bar_percent[name=?]", "progress_bar[percent]"
    end
  end
end
