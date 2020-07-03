class ConversationsController < ApplicationController
  before_action :authenticate_user

  def index
    @users = User.all
    @conversations = Conversation.all
  end

  def create
    @booking = Booking.find(params[:booking_id])
    if @booking.conversation.present?
      @conversation = @booking.conversation
    else
      @conversation = Conversation.create
      @conversation.booking = @booking
      @conversation.save
    end

    redirect_to conversation_messages_path(@conversation)
  end
end
