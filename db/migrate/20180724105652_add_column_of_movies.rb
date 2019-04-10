class AddColumnOfMovies < ActiveRecord::Migration[5.0]
  def change
  	add_column :movies, :available_time, :time
  end
end
