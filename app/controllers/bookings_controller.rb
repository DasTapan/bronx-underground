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
                redirect_to event_path(@event)
            else
                render :new, status: :unprocessable_entity
            end    
        end
    end

    def edit
        # @booking = Booking.find(params[:id])
    end
    
    def destroy
        @booking = Booking.find(booking_params[:id])
        @booking.destroy
        redirect_to root_path, status: :see_other
    end
    
    def update
    end

    private
    
    def set_event
        @event = Event.find(params[:event_id])
    end
    
    def booking_params
        params.permit(:attend,:id)
    end
end
