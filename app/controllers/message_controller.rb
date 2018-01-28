class MessageController < ApplicationController
 def create
    message = Message.new(message_params)
    message.user = current_user
    if message.save
       ActionCable.server.broadcast 'messages',
        message: message.content,
        user: message.user.username
      head :ok
    else 
      redirect_to chatboxes_path
    end
  end

  private

    def message_params
      params.require(:message).permit(:content, :chatbox_id)
    end
end
