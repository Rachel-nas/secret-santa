class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy ]

  def index
    @events = Event.all
    @participants = Participant.all
  end

  def new
    @event = Event.new
    @participant = Participant.new
  end

  def create
    # @event = Event.new(event_params)
    # @event.user = current_user
    # or
    @event = current_user.events.new event_params

    if @event.save
      # unless params["participants"].try(:empty?)
      #   Participant.create!(name: params["participants"][:name], email: params["participants"][:email], event: @event)
      # end
      redirect_to @event
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
    @participants = @event.participants
    @event.user = current_user
    arr = @participants
    arrdup = arr.dup
    @santa = {}
    arr.each do |participant|
      target = (arrdup - [participant]).sample
      @santa[participant] = target
      # arrdup.delete(target)
      arrdup = arrdup - [target]
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


  private

  def event_params
    params.require(:event).permit(
      :gift_amount, :event_date, participants_attributes: [
        :id, :name, :email, :_destroy
      ]
    )
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
