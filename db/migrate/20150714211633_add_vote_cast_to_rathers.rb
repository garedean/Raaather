class AddVoteCastToRathers < ActiveRecord::Migration
  def change
    add_column :rathers, :vote_cast, :boolean
  end
end
