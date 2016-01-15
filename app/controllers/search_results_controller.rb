class SearchResultsController < ApplicationController
  include JobQueue
  before_action :find_queue, only: :searching
  
  def show
    @result = Flight.all[session[:progress_id]]
  end

  def searching
    @progress_bar = ProgressBar.create!(message: 'Queued', percent: 0)
    session[:search_params] = params
    session[:progress_id] = @progress_bar.id
    @queue.push(@progress_bar)
    respond_to do |format|
      format.js
      format.html
    end
  end
end
