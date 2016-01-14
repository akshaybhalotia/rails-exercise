class CreateProgressBars < ActiveRecord::Migration
  def change
    create_table :progress_bars do |t|
      t.string :message
      t.decimal :percent

      t.timestamps
    end
  end
end
