class CreateNominations < ActiveRecord::Migration[7.0]
  def change
    create_table :nominations do |t|
      t.string :name
      t.string :year
      t.string :rating
      t.string :runtime
      t.string :genre
      t.string :director
      t.string :plot
      t.string :imdb_rating
      t.string :metacritic_rating
      t.integer :user_id
      t.integer :event_id
      t.string :poster

      t.timestamps
    end
  end
end
