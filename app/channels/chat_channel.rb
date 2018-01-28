class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
  	 # ActionCable.server.broadcast "chat_channel", message: data['message']
  	 Message.create! content: data['message']
  end
  def appear
  	
  end

  def away
  	
  end
end
