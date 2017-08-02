class MessagesController < ApplicationController
    before_action :authenticate_user!
    before_action :authorize_user, except: [:new, :create]

    def index
       
    end

    def show
    end

    def new
    end

    def create
    end

    def destroy
    end

    private

    def authorize_user
      message = Message.find(params[:id])
      unless current_user.id == message.user_id || current_user.id == message.recipient_id

      end
    end
end
