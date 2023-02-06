class SessionsController < ApplicationController
    # post "/login", to: "sessions#create"
    def create
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user
    end

    # delete "/logout", to: "sessions#destroy"
    def destroy
        session.delete :user_id
        head :no_content
    end
end
