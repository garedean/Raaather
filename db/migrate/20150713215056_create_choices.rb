class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.text :text
      t.integer :votes
      t.integer :user_id
    end
  end
end
