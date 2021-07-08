class ParticipantMailer < ActionMailer::Base
  default to: -> { Participant.pluck(:email) },
  from: 'participation@secretsanta.com'

  def participant_allocation
    @participant = params[:participant] + secret santa reference
    @url = "http://localhost:3000/events/#{@event}"
    mail(to: email_address_with_name(@participant.email, @participant.name), subject: 'Your Secret Santa ')
  end
end
