class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :title
      t.string :destination
      t.date :start_date
      t.date :end_date
      t.integer :people
      t.timestamps
    end
  end
end
