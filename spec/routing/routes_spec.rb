require 'rails_helper'

describe "routes to index" do
  it "routes index" do
    expect(get('/')).to route_to('landing#index')
  end
end
