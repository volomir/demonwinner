class FixColumnTypeInAward < ActiveRecord::Migration
  def change
  	rename_column :awards, :type, :award_type
  end
end
