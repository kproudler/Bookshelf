class SessionsController < ApplicationController

    def create
        user = User.find_by_credentials(
            params[:user][:username],
            params[:user][:password]
        )

        if user.nil?
            # render json: "Credentials were wrong"
            # render :new
            
            redirect_to new_session_url
        else
            login!(user)
            redirect_to user_url(user)
        end
    end

    def new
        render :new
    end

    def destroy
        logout!
        redirect_to books_url
    end

end
