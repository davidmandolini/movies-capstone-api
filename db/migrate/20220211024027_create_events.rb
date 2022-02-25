class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.integer :group_id
      t.integer :theme_id
      t.string :name
      t.boolean :voting_open?, :default => true
      t.integer :user_id
      t.datetime :date

      t.timestamps
    end
  end
end
