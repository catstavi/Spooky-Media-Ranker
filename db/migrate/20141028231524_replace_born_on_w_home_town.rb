class ReplaceBornOnWHomeTown < ActiveRecord::Migration
  def change
    add_column :historical_media, :hometown, :string
    add_column :current_media, :hometown, :string
    remove_column :historical_media, :born_on
    remove_column :current_media, :born_on
  end
end
