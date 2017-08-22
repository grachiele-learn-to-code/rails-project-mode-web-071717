class CreateShowtimes < ActiveRecord::Migration[5.1]
  def change
    create_table :showtimes do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :movie_id
      t.integer :theatre_id

      t.timestamps
    end
  end
end
