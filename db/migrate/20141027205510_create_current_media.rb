class CreateCurrentMedia < ActiveRecord::Migration
  def change
    create_table :current_media do |t|
      t.string :name
      t.text :description
      t.date :born_on

      t.timestamps
    end
  end
end
