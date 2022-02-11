class CreateUserGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :user_groups do |t|
      t.integer :user_id
      t.string :group_id
      t.string :integer

      t.timestamps
    end
  end
end
