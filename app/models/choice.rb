class Choice < ActiveRecord::Base
  default_scope { order('id ASC') }
  belongs_to :rather

  def get_percentage
    (votes.to_f / get_all_votes.to_f).round(2) * 100
  end

  def get_all_votes
    total = 0
    Choice.where("rather_id = #{rather_id}").each do |choice|
      total += choice.votes
    end
    total
  end
end
