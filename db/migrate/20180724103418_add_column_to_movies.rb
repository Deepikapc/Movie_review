class AddColumnToMovies < ActiveRecord::Migration[5.0]
  def change
  	add_column :movies, :available_date, :datetime
  end
end
