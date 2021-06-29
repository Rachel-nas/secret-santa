class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy ]

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user

    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @participant = @event.participant
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def show
    @event = Event.find(params[:id])
    @participants = @event.participants
    @event.user = current_user
  end

  # def ramdom(event_id)
  #   current_event = Event.find(params[:event_id])
  #   participants = current_event.participants
  #   participants.each do | partipant| 
  #     if (partipant.assign_participant === nil) {
  #       partipants_length = event.participants.length 
  #       partipant.assign_participant.shuffle
  #     else { return }
  #   end 
  # end

  private

  def event_params
    params.require(:event).permit(:gift_amount, :event_date)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
