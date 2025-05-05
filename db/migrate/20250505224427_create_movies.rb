class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release_year
      t.string :mpaa_rating
      t.references :studio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
