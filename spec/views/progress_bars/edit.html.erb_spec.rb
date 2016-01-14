require 'rails_helper'

RSpec.describe "progress_bars/edit", type: :view do
  before(:each) do
    @progress_bar = assign(:progress_bar, ProgressBar.create!(
      :message => "MyString",
      :percent => "9.99"
    ))
  end

  it "renders the edit progress_bar form" do
    render

    assert_select "form[action=?][method=?]", progress_bar_path(@progress_bar), "post" do

      assert_select "input#progress_bar_message[name=?]", "progress_bar[message]"

      assert_select "input#progress_bar_percent[name=?]", "progress_bar[percent]"
    end
  end
end
