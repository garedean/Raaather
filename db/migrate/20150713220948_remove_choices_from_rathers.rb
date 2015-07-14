class RemoveChoicesFromRathers < ActiveRecord::Migration
  def change
    remove_column :rathers, :choice_one_text
    remove_column :rathers, :choice_two_text
    remove_column :rathers, :choice_one_votes
    remove_column :rathers, :choice_two_votes
  end
end
