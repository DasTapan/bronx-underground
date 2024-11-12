class EventsController < ApplicationController
    before_action :authenticate_user!, only: [ :new, :create ]

    def index
        @past_events = Event.past
        @future_events = Event.future
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
        set_event_date_and_time
        @created_event = current_user.created_events.build({title: event_params[:title], event_at: @event_date_and_time})

        if @created_event.save
            redirect_to @created_event
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def event_params
        params.require(:event).permit(:title, :event_on, :event_at)        
    end

    def get_current_user_id
        if signed_in?
            current_user.id
        else
            nil
        end
    end

    def set_event_date_and_time
        event_date = event_params[:event_on]
        event_time = event_params[:event_at]
        @event_date_and_time = Time.parse("#{event_date} #{event_time}")
    end
end
