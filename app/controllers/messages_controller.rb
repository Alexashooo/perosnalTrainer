class MessagesController < ApplicationController
    before_action :authenticate_user!


    def index
      @messages = Message.visible_to(current_user)
    end

    def show
      @message = Message.find(params[:id])
    end

    def new
      @message = Message.new
    end

    def create
      @message = Message.new(message_params)
      @message.user_id = current_user.id

      if @message.save
        flash[:notice] = "Message was saved successfully"
        redirect_to messages_path
      else
        flash[:error] = "Message could not be saved, plase try again!"
        render new_message_path
      end
    end

    def destroy
      @message = Message.find(params[:id])

      if @message.destroy
        flash[:notice] = "Message is deleted successfully"
      else
        flash[:error] = 'Message could not be deleted! Please try again.'
      end
    end

    private

    def message_params
      params.require(:message).permit(:subject, :body, :recipient_email)
    end


end
