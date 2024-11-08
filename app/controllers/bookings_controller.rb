class BookingsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_event
    
    def new
        is_an_attendee = Events::ShowSerializer.new(@event.id, current_user.id)
        @booking = Booking.new
    end

    def create
        attend = booking_params[:attend]
        if attend == "1"
            @booking = @event.bookings.build(event_id: @event.id, attendee_id: current_user.id)
            
            if @booking.save
                redirect_to root_path
            else
                render :new, status: :unprocessable_entity
            end    
        end
    end

    def update
    end

    private
    
    def set_event
        @event = Event.find(params[:event_id])
    end
    
    def booking_params
        params.permit(:attend)
    end
end
