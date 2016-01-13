class SearchResultsController < ApplicationController
  def show
    @result = Flight.find(10)
  end
end
