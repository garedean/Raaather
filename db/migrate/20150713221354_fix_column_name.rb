class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :choices, :user_id, :rather_id
  end
end
