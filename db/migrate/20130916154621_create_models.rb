class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.integer :painter_id
      t.string :title
      t.string :image_url

      t.timestamps
    end
  end
end
