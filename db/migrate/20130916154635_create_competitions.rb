class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.integer :year
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
