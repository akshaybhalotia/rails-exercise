require "rails_helper"

RSpec.describe ProgressBarsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/progress_bars").to route_to("progress_bars#index")
    end

    it "routes to #new" do
      expect(:get => "/progress_bars/new").to route_to("progress_bars#new")
    end

    it "routes to #show" do
      expect(:get => "/progress_bars/1").to route_to("progress_bars#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/progress_bars/1/edit").to route_to("progress_bars#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/progress_bars").to route_to("progress_bars#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/progress_bars/1").to route_to("progress_bars#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/progress_bars/1").to route_to("progress_bars#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/progress_bars/1").to route_to("progress_bars#destroy", :id => "1")
    end

  end
end
