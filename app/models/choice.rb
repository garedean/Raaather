class Choice < ActiveRecord::Base
  default_scope { order('id ASC') }
  has_many :votes
  belongs_to :rather

  def user_voted_for?(user)
    return "active" if user.votes.where("user_id = #{user.id} and choice_id = #{id}").count > 0
  end
end
