class PrasController < ApplicationController
  before_action :set_pra, only: [:show, :edit, :update, :destroy]

  # GET /pras
  # GET /pras.json
  def index
    @pras = Pra.all
  end

  # GET /pras/1
  # GET /pras/1.json
  def show
  end

  # GET /pras/new
  def new
    @pra = Pra.new
  end

  # GET /pras/1/edit
  def edit
  end

  # POST /pras
  # POST /pras.json
  def create
    @pra = Pra.new(pra_params)

    respond_to do |format|
      if @pra.save
        format.html { redirect_to @pra, notice: 'Pra was successfully created.' }
        format.json { render :show, status: :created, location: @pra }
      else
        format.html { render :new }
        format.json { render json: @pra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pras/1
  # PATCH/PUT /pras/1.json
  def update
    respond_to do |format|
      if @pra.update(pra_params)
        format.html { redirect_to @pra, notice: 'Pra was successfully updated.' }
        format.json { render :show, status: :ok, location: @pra }
      else
        format.html { render :edit }
        format.json { render json: @pra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pras/1
  # DELETE /pras/1.json
  def destroy
    @pra.destroy
    respond_to do |format|
      format.html { redirect_to pras_url, notice: 'Pra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pra
      @pra = Pra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pra_params
      params.require(:pra).permit(:color, :name)
    end
end
