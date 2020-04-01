class EventsController < ApplicationController
  def index
   if current_user.present?
      @events = Event.all.where(user_id: current_user.id)
      else
    @events = Event.all
    end
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.new
    event.title = params[:event][:title]
    event.start = params[:event][:start]
    event.end = params[:event][:end]
    event.user_id = current_user.id
    if event.save
    redirect_to events_index_path
  else
    redirect_to events_new_path
  end
  end
  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(title: params[:event][:title],start: params[:event][:start],end: params[:event][:end])
      redirect_to events_index_path
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_index_path
  end

  def show
     @event = Event.find(params[:id])
  end
end
