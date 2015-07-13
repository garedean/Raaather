class Rather < ActiveRecord::Base
  has_many :choices, dependent: :destroy

  validates :choice_one_text, :presence => true
  validates :choice_two_text, :presence => true
end
