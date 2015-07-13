class Rather < ActiveRecord::Base
  has_many :comments
  validates :choice_one_text, :presence => true
  validates :choice_two_text, :presence => true
end
