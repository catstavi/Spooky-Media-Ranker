class AddRankingsToMediums < ActiveRecord::Migration
  def change
    add_column :historical_media, :rank, :integer
    add_column :fictional_media, :rank, :integer
    add_column :current_media, :rank, :integer

  end
end
