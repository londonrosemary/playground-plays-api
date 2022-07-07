class MonologuesController < ApplicationController
  before_action :set_monologue, only: %i[ show update destroy ]

  # GET /monologues
  def index
    @monologues = Monologue.all

    render json: @monologues
  end

  # GET /monologues/1
  def show
    render json: @monologue
  end

  # POST /monologues
  def create
    @monologue = Monologue.new(monologue_params)

    if @monologue.save
      render json: @monologue, status: :created, location: @monologue
    else
      render json: @monologue.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /monologues/1
  def update
    if @monologue.update(monologue_params)
      render json: @monologue
    else
      render json: @monologue.errors, status: :unprocessable_entity
    end
  end

  # DELETE /monologues/1
  def destroy
    @monologue.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monologue
      @monologue = Monologue.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def monologue_params
      params.require(:monologue).permit(:name, :belongs_to, :play)
    end
end
