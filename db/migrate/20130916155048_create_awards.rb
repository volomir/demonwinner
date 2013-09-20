class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.integer :competition_id
      t.integer :category_id
      t.integer :model_id
      t.string :type

      t.timestamps
    end
  end
end
