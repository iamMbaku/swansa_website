class RequestRoomsController < ApplicationController
  before_action :set_request_room, only: [:show, :edit, :update, :destroy]

  # GET /request_rooms
  # GET /request_rooms.json
  def index
    @request_rooms = RequestRoom.all
  end

  # GET /request_rooms/1
  # GET /request_rooms/1.json
  def show
  end

  # GET /request_rooms/new
  def new
    @request_room = RequestRoom.new
  end

  # GET /request_rooms/1/edit
  def edit
  end

  # POST /request_rooms
  # POST /request_rooms.json
  def create
    @request_room = RequestRoom.new(request_room_params)

    respond_to do |format|
      if @request_room.save
        format.html { redirect_to @request_room, notice: 'Request room was successfully created.' }
        format.json { render :show, status: :created, location: @request_room }
      else
        format.html { render :new }
        format.json { render json: @request_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_rooms/1
  # PATCH/PUT /request_rooms/1.json
  def update
    respond_to do |format|
      if @request_room.update(request_room_params)
        format.html { redirect_to @request_room, notice: 'Request room was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_room }
      else
        format.html { render :edit }
        format.json { render json: @request_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_rooms/1
  # DELETE /request_rooms/1.json
  def destroy
    @request_room.destroy
    respond_to do |format|
      format.html { redirect_to request_rooms_url, notice: 'Request room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_room
      @request_room = RequestRoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_room_params
      params.require(:request_room).permit(:house_adress, :other_house_details, :house_image, :room_availability, :number_people_in_Room, :room_cost, :other_room_details, :room_image)
    end
end
