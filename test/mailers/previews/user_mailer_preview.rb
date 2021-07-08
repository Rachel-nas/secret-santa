class UserMailerPreview < ActionMailer::Preview
  def welcome_email
    UserMailer.with(user: User.first).welcome_email
  end

  # def participant_allocation
  #   # UserMailer.with(participant: Participant.first).participant_allocation
  # end
end
