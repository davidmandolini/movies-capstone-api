class AddTrailerUrlToNomination < ActiveRecord::Migration[7.0]
  def change
    add_column :nominations, :trailer_url, :string
  end
end
