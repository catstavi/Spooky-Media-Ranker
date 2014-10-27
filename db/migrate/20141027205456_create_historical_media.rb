class CreateHistoricalMedia < ActiveRecord::Migration
  def change
    create_table :historical_media do |t|
      t.string :name
      t.text :description
      t.date :born_on

      t.timestamps
    end
  end
end
