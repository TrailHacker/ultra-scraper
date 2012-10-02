class CreateRunners < ActiveRecord::Migration
  def change
    create_table :runners do |t|
      t.string :full_name
      t.integer :rank
      t.string :finishing_time
      t.string :club_name
      t.integer :year_of_birth
      t.string :gender
      t.integer :gender_rank
      t.string :category_name
      t.integer :category_rank
      t.string :pace_in_km
      t.references :race

      t.timestamps
    end
  end
end
