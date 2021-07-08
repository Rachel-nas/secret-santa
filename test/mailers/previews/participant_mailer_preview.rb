class ParticipantMailerPreview < ActionMailer::Preview
  def participant_allocation
    UserMailer.with(participant: Participant.first).participant_allocation
  end
end
