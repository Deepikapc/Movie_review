class CreateTheaters < ActiveRecord::Migration[5.0]
  def change
    create_table :theaters do |t|
      t.string :name
      t.datetime :time
      t.integer :movie_id

      t.timestamps
    end
  end
end
