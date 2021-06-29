class ParticipantsController < ApplicationController
  # before_action :set_event, only: %i[ new create ]

  def index
  end

  def new
    @event = Event.find(params[:event_id])
    @participant = Participant.new
  end

  def create
    @participant = Participant.new(participant_params)
    @event = Event.find(params[:event_id])
    @participant.user = current_user
    @participant.event = @event

    if @participant.save
      redirect_to event_path(@event)
      # reditect_to new_event_participant(@event)
    else
      render :new
    end
  end

  def show
    @participant = Participant.find(params[:id])
    @event = @participant.event
    @participant.user = current_user
  end

  private

  def participant_params
    params.require(:participant).permit(:name, :email)
  end

  # def set_participant
  #   @participant = Participant.find(params[:id])
  # end
end
