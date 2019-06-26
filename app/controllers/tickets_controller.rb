class TicketsController < ApplicationController

    def new
        @ticket = Ticket.new
        @passengers = Passenger.all 
        @airports = Airport.all
    end

    def create
        @ticket = Ticket.create(ticket_params)
        @passengers = Passenger.all
        @airports = Airport.all

        if @ticket.valid?
            redirect_to passenger_path(@ticket.passenger)
        else
            flash[:error] = @ticket.errors.full_messages
            render :new
        end

    end

    def show
        @ticket = Ticket.find(params[:id])
    end
    
    private

    def ticket_params
    params.require(:ticket).permit(:price, :airport_id, :passenger_id)
    end

end
