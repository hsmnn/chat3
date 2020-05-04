class RoomsController < ApplicationController
    before_action :load_entities
    def index
        @rooms = Room.all
    end

    def new
        @room = Room.new
    end

    def create
        @room = Room.new permitted_parametters

        if @room.save
            flash[:success] = "Room #{@room.name} was created successfully"
            redirect_to rooms_path
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @room.update_attributes(permitted_parametters)
            flash[:success] = "Room #{@room.name} was updated successfully"
            redirect_to rooms_path
        else
            render :new
        end
    end

    protected

    def load_entities
        @rooms = Room.all
        @room = Room.find(params[:id]) if params[:id]
    end

    def permitted_parametters
        params.require(:room).permit(:name)
    end
end
