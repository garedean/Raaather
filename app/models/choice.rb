class Choice < ActiveRecord::Base
  default_scope { order('id ASC') }
  has_many :votes
  belongs_to :rather

  def user_voted_for?(user)
    if user
      return "active" if user.votes.where("user_id = #{user.id} and choice_id = #{id}").count > 0
    end
  end

  def get_percentage(rather)
    ((votes.count.to_f / get_all_votes(rather).to_f).round(2) * 100.to_f).round(0)
  end

  def get_all_votes(rather)
    total = 0;

    rather.choices.each do |choice|
      total += choice.votes.count
    end

    total;
  end
end
