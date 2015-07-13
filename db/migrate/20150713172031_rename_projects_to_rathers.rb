class RenameProjectsToRathers < ActiveRecord::Migration
  def change
    rename_table :projects, :rathers
  end
end
