require 'thread'
module JobQueue
  extend ActiveSupport::Concern

  private
  def find_queue
    @queue = @queue || Queue.new
    Thread.new do
      while current_progress_bar = @queue.pop(false)
        current_progress_bar.update_attributes!({
          message: 'Working ...',
          percent: 0
        })
        
        20.times do |i|
          sleep(1)
          current_progress_bar.update_attributes!(percent: i * 5)
        end
        
        current_progress_bar.update_attributes!({
          message: 'Finished!',
          percent: 0
        })
      end
      ActiveRecord::Base.connection.close
    end
  end
end
