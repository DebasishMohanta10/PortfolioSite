class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to root_url
    end
  end

  private
    def message_params
      params.require(:message).permit(:name,:email,:message)
    end
end
