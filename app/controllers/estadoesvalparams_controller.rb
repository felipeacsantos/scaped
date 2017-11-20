class EstadoesvalparamsController < ApplicationController
  before_action :set_estadoesvalparam, only: [:show, :edit, :update, :destroy]

  # GET /estadoesvalparams
  # GET /estadoesvalparams.json
  def index
    @estadoesvalparams = Estadoesvalparam.all
  end

  # GET /estadoesvalparams/1
  # GET /estadoesvalparams/1.json
  def show
  end

  # GET /estadoesvalparams/new
  def new
    @estadoesvalparam = Estadoesvalparam.new
  end

  # GET /estadoesvalparams/1/edit
  def edit
  end

  # POST /estadoesvalparams
  # POST /estadoesvalparams.json
  def create
    @estadoesvalparam = Estadoesvalparam.new(estadoesvalparam_params)

    respond_to do |format|
      if @estadoesvalparam.save
        format.html { redirect_to @estadoesvalparam, notice: 'Estadoesvalparam was successfully created.' }
        format.json { render :show, status: :created, location: @estadoesvalparam }
      else
        format.html { render :new }
        format.json { render json: @estadoesvalparam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estadoesvalparams/1
  # PATCH/PUT /estadoesvalparams/1.json
  def update
    respond_to do |format|
      if @estadoesvalparam.update(estadoesvalparam_params)
        format.html { redirect_to @estadoesvalparam, notice: 'Estadoesvalparam was successfully updated.' }
        format.json { render :show, status: :ok, location: @estadoesvalparam }
      else
        format.html { render :edit }
        format.json { render json: @estadoesvalparam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estadoesvalparams/1
  # DELETE /estadoesvalparams/1.json
  def destroy
    @estadoesvalparam.destroy
    respond_to do |format|
      format.html { redirect_to estadoesvalparams_url, notice: 'Estadoesvalparam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estadoesvalparam
      @estadoesvalparam = Estadoesvalparam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estadoesvalparam_params
      params.require(:estadoesvalparam).permit(:estado_id, :esvalparam_id)
    end
end
