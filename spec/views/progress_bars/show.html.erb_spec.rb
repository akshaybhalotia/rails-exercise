require 'rails_helper'

RSpec.describe "progress_bars/show", type: :view do
  before(:each) do
    @progress_bar = assign(:progress_bar, ProgressBar.create!(
      :message => "Message",
      :percent => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Message/)
    expect(rendered).to match(/9.99/)
  end
end
