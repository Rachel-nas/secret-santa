class ParticipantsController < ApplicationController
  # before_action :set_event, only: %i[ new create ]

  # def index
  # end

  # def new
  #   @event = Event.find(params[:event_id])
  #   @participant = Participant.new
  # end

  # def create
  #   @participant = Participant.new(participant_params)
  #   @event = Event.find(params[:event_id])
  #   @participant.user = current_user
  #   @participant.event = @event

  #   if @participant.save
  #     redirect_to event_path(@event)
  #     # reditect_to new_event_participant(@event)
  #   else
  #     render :new
  #   end
  # end

  # def show
  #   @participant = Participant.find(params[:id])
  #   @event = @participant.event
  #   @participant.user = current_user
  # end

  # def random_participant
  #   #Create an array (or use .map)
  #   @participants = []
  #   # Select all participants and Retrive ids from params and store them in the array
  #   @participants << Participant.all(params[:participant_id])
  #   # [].shuffle and for each participant, assign him the id of another participant
  #   @participants.each do |participant|
  #     if participant =! @participants.sample
  #       # send email (participant_allocation)
  #     end
  #   end
  # end

  # private

  # def participant_params
  #   params.require(:participant).permit(:name, :email)
  # end

  # def set_participant
  #   @participant = Participant.find(params[:id])
  # end
end
