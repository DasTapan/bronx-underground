class UsersController < ApplicationController
    before_action :authenticate_user!
    
    def show
        @user = User.find(current_user.id)
        @created_events = @user.created_events
        @attended_events = @user.attended_events
    end
end
