class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :dashboard ]

  def home
  end

  def dashboard
    @user = current_user
    @lairs = @user.lairs

    # @my_lair_bookings = Booking.joins(:lair).where("lairs.user_id = #{current_user.id}")

    # sql query

    my_lair_array = []
    @accepted_bookings = []
    @rejected_bookings = []
    @pending_bookings = [] 


    @lairs.map do |lair|
      my_lair_array << lair.bookings
    end
    @my_lair_bookings = my_lair_array.flatten

    @my_lair_bookings.each do |booking|
      if booking[:status] == "accepted"
        @accepted_bookings << booking
      elsif booking[:status] == "rejected"
        @rejected_bookings << booking
      elsif booking[:status] == "pending"
        @pending_bookings << booking
      end
    end
    # @my_own_bookings = @user.bookings
    @my_own_bookings = @user.bookings
    # exclude lairs included in @lairs?

    @favourites = current_user.favourites
  end

end
