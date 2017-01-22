class ShivsController < ApplicationController
  before_action :set_shiv, only: [:show, :edit, :update, :destroy]

  # GET /shivs
  # GET /shivs.json
  def index
    @shivs = Shiv.all
  end

  # GET /shivs/1
  # GET /shivs/1.json
  def show
  end

  # GET /shivs/new
  def new
    @shiv = Shiv.new
  end

  # GET /shivs/1/edit
  def edit
  end

  # POST /shivs
  # POST /shivs.json
  def create
    @shiv = Shiv.new(shiv_params)

    respond_to do |format|
      if @shiv.save
        format.html { redirect_to @shiv, notice: 'Shiv was successfully created.' }
        format.json { render :show, status: :created, location: @shiv }
      else
        format.html { render :new }
        format.json { render json: @shiv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shivs/1
  # PATCH/PUT /shivs/1.json
  def update
    respond_to do |format|
      if @shiv.update(shiv_params)
        format.html { redirect_to @shiv, notice: 'Shiv was successfully updated.' }
        format.json { render :show, status: :ok, location: @shiv }
      else
        format.html { render :edit }
        format.json { render json: @shiv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shivs/1
  # DELETE /shivs/1.json
  def destroy
    @shiv.destroy
    respond_to do |format|
      format.html { redirect_to shivs_url, notice: 'Shiv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shiv
      @shiv = Shiv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shiv_params
      params.require(:shiv).permit(:name, :password)
    end
end
