class Rather < ActiveRecord::Base
  has_many :comments
  has_many :choices, dependent: :destroy
  accepts_nested_attributes_for :choices

  def first_choice
    choices[0]
  end

  def second_choice
    choices[1]
  end
end
