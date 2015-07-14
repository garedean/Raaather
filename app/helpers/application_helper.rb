module ApplicationHelper
  def disable_if_user_voted(rather)
    if current_user
      if current_user.votes.where('choice_id =' + rather.first_choice.id.to_s).count > 0 || current_user.votes.where('choice_id =' + rather.second_choice.id.to_s).count > 0
        'disable-clicks'
      end
    end
  end
end
