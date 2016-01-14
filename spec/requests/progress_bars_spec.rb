require 'rails_helper'

RSpec.describe "ProgressBars", type: :request do
  describe "GET /progress_bars" do
    it "works! (now write some real specs)" do
      get progress_bars_path
      expect(response).to have_http_status(200)
    end
  end
end
