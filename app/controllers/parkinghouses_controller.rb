class ParkinghousesController < ApplicationController
  before_action :set_parkinghouse, only: [:show, :edit, :update, :destroy]

  # GET /parkinghouses
  # GET /parkinghouses.json
  def index
    @parkinghouses = Parkinghouse.all
  end

  # GET /parkinghouses/1
  # GET /parkinghouses/1.json
  def show
    @comment = Comment.new
    @comment.parkinghouse_id = @parkinghouse.id

    @car = Car.new
    @car.parkinghouse_id = @parkinghouse_id
  end

  # GET /parkinghouses/new
  def new
    @parkinghouse = Parkinghouse.new
  end

  # GET /parkinghouses/1/edit
  def edit
  end

  # POST /parkinghouses
  # POST /parkinghouses.json
  def create
    @parkinghouse = Parkinghouse.new(parkinghouse_params)

    respond_to do |format|
      if @parkinghouse.save
        format.html { redirect_to @parkinghouse, notice: 'Parkinghouse was successfully created.' }
        format.json { render :show, status: :created, location: @parkinghouse }
      else
        format.html { render :new }
        format.json { render json: @parkinghouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parkinghouses/1
  # PATCH/PUT /parkinghouses/1.json
  def update
    respond_to do |format|
      if @parkinghouse.update(parkinghouse_params)
        format.html { redirect_to @parkinghouse, notice: 'Parkinghouse was successfully updated.' }
        format.json { render :show, status: :ok, location: @parkinghouse }
      else
        format.html { render :edit }
        format.json { render json: @parkinghouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parkinghouses/1
  # DELETE /parkinghouses/1.json
  def destroy
    @parkinghouse.destroy
    respond_to do |format|
      format.html { redirect_to parkinghouses_url, notice: 'Parkinghouse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parkinghouse
      @parkinghouse = Parkinghouse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parkinghouse_params
      params.require(:parkinghouse).permit(:name, :address, :description, :image)
    end
end
