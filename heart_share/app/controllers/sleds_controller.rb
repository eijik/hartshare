class SledsController < ApplicationController
  before_action :set_sled, only: [:show, :edit, :update, :destroy]

  # GET /sleds
  def index
    @sleds = Sled.all
  end

  # GET /sleds/1
  def show
  end

  # GET /sleds/new
  def new
    @sled = Sled.new
  end

  # GET /sleds/1/edit
  def edit
  end

  # POST /sleds
  def create
    @sled = Sled.new(sled_params)

    if @sled.save
      redirect_to @sled, notice: 'Sled was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sleds/1
  def update
    if @sled.update(sled_params)
      redirect_to @sled, notice: 'Sled was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sleds/1
  def destroy
    @sled.destroy
    redirect_to sleds_url, notice: 'Sled was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sled
      @sled = Sled.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sled_params
      params[:sled]
    end
end
