module Events
    class ShowSerializer
        def initialize(event_id,user_id)
            @event = Event.find(event_id)
            @user_id = user_id
        end

        def call
            is_an_attendee?
        end

        private

        def is_an_attendee?
            if @user_id.nil?
                nil
            else
                attendee_ids = @event.attendees.pluck(:id)
                attendee_ids.include?(@user_id)
            end
        end
    end
end