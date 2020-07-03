class MessagesController < ApplicationController
  before_action, only: [:index, :new, :create] do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def index
    @messages = @conversation.messages
    if @messages.length > 10
      @over_ten = true
      @messages = @messages[-10..]
    end
    if params[:m]
      @over_ten = false
      @messages = @conversation.messages
    end
    @messages.each do |message|
      message.read = true if message.user_id != current_user.id
      message.save
    end
    @message = @conversation.messages.new
  end

  def new
    @message = @conversation.messages.new
  end

  def create
    @message = @conversation.messages.new(message_params)
    redirect_to conversation_messages_path(@conversation, anchor: "message-#{@message.id}") if @message.save
  end

  def destroy
    @message = Message.find(params[:message_id])
    @message.destroy
  end

  private

  def message_params
    params.require(:message).permit(:body, :user_id)
  end
end
