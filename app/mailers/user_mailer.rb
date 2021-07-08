class UserMailer < ApplicationMailer
  default to: -> { Participant.pluck(:email) },
  from: 'participation@secretsanta.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://localhost:3000/users/sign_in'
    mail(to: email_address_with_name(@user.email, @user.name), subject: 'Welcome to My Awesome Site')
  end

  # def participant_allocation
  #   @participant = params[:participant]
  #   @url = "http://localhost:3000/events/#{@event}"
  #   mail(to: email_address_with_name(@participant.email, @participant.name), subject: 'Your Secret Santa ')
  # end
end
