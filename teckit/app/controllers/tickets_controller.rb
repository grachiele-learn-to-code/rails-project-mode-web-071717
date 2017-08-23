class TicketsController < ApplicationController

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.showtime.tickets_left -= 1
    @ticket.showtime.save
    @ticket.save
    redirect_to user_path(@ticket.user)
  end

  private

    def ticket_params
      params.require(:ticket).permit(:user_id, :showtime_id)
    end

end
