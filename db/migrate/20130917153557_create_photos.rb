class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :model_id
      t.integer :order
      t.string :file

      t.timestamps
    end
  end
end
