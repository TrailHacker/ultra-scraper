class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :event_name
      t.string :event_distance
      t.date :event_date
      t.string :url

      t.timestamps
    end
  end
end
