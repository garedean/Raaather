class Rather < ActiveRecord::Migration
  def change
     create_table :rathers do |t|
       t.string :choice_one_text
       t.string :choice_two_text
       t.integer :choice_one_votes
       t.integer :choice_two_votes

       t.timestamps
     end
   end
end
