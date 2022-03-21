class RemoveThemeIdFromEvent < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :theme_id, :integer
  end
end
