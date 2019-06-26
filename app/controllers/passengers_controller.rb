class PassengersController < ApplicationController

    def index
        @passengers = Passenger.all
    end

    def new
        @passenger = Passenger.new
    end

    def create
        @passenger = Passenger.create(passenger_params)
        ##check if valid
        if @passenger.valid?
            redirect_to passenger_path(@passenger)
        else
            flash[:error] = @passenger.errors.full_messages
            render :new
        end
    end

    def show
        @passenger = Passenger.find(params[:id])
    end

    def edit
        @passenger = Passenger.find(params[:id])
    end

    def update
        @passenger = Passenger.find(params[:id])
        @passenger.update(passenger_params)
        ##check if valid
        if @passenger.valid?
            redirect_to passenger_path(@passenger)
        else
            flash[:error] = @passenger.errors.full_messages
            render :edit
        end
    end

    def destroy
        @passenger = Passenger.find(params[:id])
        @passenger.destroy
        redirect_to passengers_path
    end

    private

    def passenger_params
        params.require(:passenger).permit(:name, :age)
    end

end
