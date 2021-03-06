class PlaysController < ApplicationController
  before_action :set_play, only: %i[ show update destroy ]

  # GET /plays
  def index
    @plays = Play.all

    render json: @plays
  end

  # GET /plays/1
  def show
    render json: @play
  end

  # POST /plays
  def create
    @play = Play.new(play_params)

    if @play.save
      render json: @play, status: :created, location: @play
    else
      render json: @play.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /plays/1
  def update
    if @play.update(play_params)
      render json: @play
    else
      render json: @play.errors, status: :unprocessable_entity
    end
  end

  # DELETE /plays/1
  def destroy
    @play.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_play
      @play = Play.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def play_params
      params.permit(:name, :author, :genre, :length, :num_character, :time_period, :copy_avail, :synopsis)
    end
end
