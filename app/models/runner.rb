class Runner < ActiveRecord::Base
  attr_accessible :category_name, :category_rank, :club_name, :finishing_time, :full_name, :gender, :gender_rank, :pace_in_km, :rank, :references, :year_of_birth
end
