class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.integer :group_id
      t.integer :theme_id
      t.string :name
      t.string :status, :default => "open"
      t.integer :user_id
      t.datetime :date

      t.timestamps
    end
  end
end
