class CreateNominations < ActiveRecord::Migration[7.0]
  def change
    create_table :nominations do |t|
      t.string :name
      t.integer :year
      t.string :rating
      t.integer :runtime
      t.string :genre
      t.string :director
      t.string :plot
      t.array :reviews
      t.integer :user_id
      t.integer :event_id
      t.string :trailer_url
      t.string :poster

      t.timestamps
    end
  end
end
