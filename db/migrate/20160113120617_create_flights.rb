class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :from
      t.string :to
      t.date :date_of_journey
      t.time :dep_time
      t.time :arr_time
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
