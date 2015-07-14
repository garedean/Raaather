class Rather < ActiveRecord::Base
  has_many :comments
  has_many :choices, dependent: :destroy

  accepts_nested_attributes_for :choices
end
