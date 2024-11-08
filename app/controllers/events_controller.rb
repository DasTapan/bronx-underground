class EventsController < ApplicationController
    before_action :authenticate_user!, only: [ :new, :create ]

    def index
        @events = Event.all
    end

    def show
        @created_event = Event.find(params[:id])
        @attendees = @created_event.attendees
        attendee_ids = @created_event.attendees.pluck(:id)
        @is_an_attendee, @is_creator = Events::ShowSerializer.new(params[:id],get_current_user_id).call.values_at(:is_an_attendee, :is_creator)
        @booking = if @is_an_attendee
            Booking.where(event_id:params[:id],attendee_id: current_user.id).take
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
