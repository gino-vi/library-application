class FixCitiesColumnName < ActiveRecord::Migration
  def up
    rename_column :cities, :country_id, :state_id
  end

  def down
  end
end
