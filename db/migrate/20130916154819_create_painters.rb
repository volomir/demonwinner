class CreatePainters < ActiveRecord::Migration
  def change
    create_table :painters do |t|
      t.string :name
      t.string :surname
      t.string :nickname
      t.string :nationality

      t.timestamps
    end
  end
end
