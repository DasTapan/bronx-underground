class EventsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    
    def index
        @events = Event.all
    end

    def show
        @created_event = Event.find(params[:id])
        @attendees = @created_event.attendees
    end

    def new
        @created_event = Event.new
    end

    def create
        @created_event = current_user.created_events.build(event_params)
        
        if @created_event.save
            redirect_to @created_event
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def event_params
        params.require(:event).permit(:date,:title,:time)
    end
end
