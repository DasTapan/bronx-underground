class EventsController < ApplicationController
    before_action :authenticate_user!, only: [ :new, :create ]

    def index
        @events = Event.all
    end

    def show
        @created_event = Event.find(params[:id])
        @attendees = @created_event.attendees
        attendee_ids = @created_event.attendees.pluck(:id)
        @is_an_attendee = if get_current_user_id.nil?
            nil
        else
            attendee_ids.include?(get_current_user_id)
        end
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
        params.require(:event).permit(:date, :title, :time)
    end

    def get_current_user_id
        if signed_in?
            current_user.id
        else
            nil
        end
    end
end
