require 'rails_helper'

RSpec.describe "progress_bars/index", type: :view do
  before(:each) do
    assign(:progress_bars, [
      ProgressBar.create!(
        :message => "Message",
        :percent => "9.99"
      ),
      ProgressBar.create!(
        :message => "Message",
        :percent => "9.99"
      )
    ])
  end

  it "renders a list of progress_bars" do
    render
    assert_select "tr>td", :text => "Message".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
