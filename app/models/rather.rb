class Rather < ActiveRecord::Base
  validates :choice_one_text, :presence => true
  validates :choice_two_text, :presence => true
end
