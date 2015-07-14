class RemoveChoiceTextFromRathers < ActiveRecord::Migration
  def change
    remove_column :rathers, :choice_one_text
    remove_column :rathers, :choice_two_text
  end
end
