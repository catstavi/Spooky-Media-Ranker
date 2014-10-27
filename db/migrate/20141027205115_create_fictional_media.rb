class CreateFictionalMedia < ActiveRecord::Migration
  def change
    create_table :fictional_media do |t|
      t.string :name
      t.text :description
      t.string :context

      t.timestamps
    end
  end
end
