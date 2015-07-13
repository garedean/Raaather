class Rather < ActiveRecord::Base
<<<<<<< HEAD
  has_many :comments
=======
  has_many :choices, dependent: :destroy

>>>>>>> 71a2fb28fc65858907f93801b9d43144d429bf4a
  validates :choice_one_text, :presence => true
  validates :choice_two_text, :presence => true
end
