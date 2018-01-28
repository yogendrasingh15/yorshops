class BroadcastMessageJobJob < ApplicationJob
  queue_as :default

  def perform(messsage)
  	 ActionCable.server.broadcast "chat_channel", render_message(message)
  end
  private 
  def render_message(message)
  	  ApplicationController.renderer.render message
  end
end
