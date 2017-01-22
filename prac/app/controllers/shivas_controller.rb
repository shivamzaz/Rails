class ShivasController < ApplicationController
  before_action :set_shiva, only: [:show, :edit, :update, :destroy]

  # GET /shivas
  # GET /shivas.json
  def index
    sleep 1
    @shivas = Shiva.all
  end
  # GET /shivas/1

  # GET /shivas/1.json
  def show
  end
  #3.36, 

  # GET /shivas/new
  def new
    @shiva = Shiva.new
  end

  # GET /shivas/1/edit
  def edit
      #format.js  { render :layout => false }
  end

  # POST /shivas
  # POST /shivas.json
  def create
    #@shiva=Shiva.create!(params[:shiva])
    @shiva = Shiva.new(shiva_params)
    #@list = shiva.find(params[:shiva_id])
    #@item = @list.items.create!(params[:item])
    #sss@shivas=Shiva.all
    respond_to do |format|
      if @shiva.save
        format.html { redirect_to shivas_url, notice: 'Shiva was successfully created.' }
        #format.js{render :layout =>false}
        format.json { render :show, status: :created, location: @shiva }
      else
        format.html { render :new }
        format.js{render :layout =>false}
        format.json { render json: @shiva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shivas/1
  # PATCH/PUT /shivas/1.json
  def update
    respond_to do |format|
      if @shiva.update(shiva_params)
        format.html { redirect_to @shiva, notice: 'Shiva was successfully updated.' }
        format.js  { render :layout => false }
        format.json { render :show, status: :ok, location: @shiva }
      else
        format.html { render :edit }
        format.js  { render :layout => false }
        format.json { render json: @shiva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shivas/1
  # DELETE /shivas/1.json
  def destroy
    @shiva.destroy
    respond_to do |format|
      format.html { redirect_to shivas_url, notice: 'Shiva was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shiva
      @shiva = Shiva.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shiva_params
      params.require(:shiva).permit(:color)
    end
end
