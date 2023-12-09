module DiariesHelper
  def already_posted_for_today?(user)
    return false if user.diaries.empty?

    previous_recent_seven_from_now = Time.current.beginning_of_day + 7.hours
    previous_recent_seven_from_now -= 1.day if Time.current < previous_recent_seven_from_now
    if previous_recent_seven_from_now < Diary.where(user_id: user.id).order(created_at: :desc).first.created_at
      return true
    else
      return false
    end
  end
end
