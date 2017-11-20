class EsparamsController < ApplicationController
  before_action :set_esparam, only: [:show, :edit, :update, :destroy]

  # GET /esparams
  # GET /esparams.json
  def index
    @esparams = Esparam.all
  end

  # GET /esparams/1
  # GET /esparams/1.json
  def show
  end

  # GET /esparams/new
  def new
    @esparam = Esparam.new
  end

  # GET /esparams/1/edit
  def edit
  end

  # POST /esparams
  # POST /esparams.json
  def create
    @esparam = Esparam.new(esparam_params)

    respond_to do |format|
      if @esparam.save
        format.html { redirect_to @esparam, notice: 'Esparam was successfully created.' }
        format.json { render :show, status: :created, location: @esparam }
      else
        format.html { render :new }
        format.json { render json: @esparam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /esparams/1
  # PATCH/PUT /esparams/1.json
  def update
    respond_to do |format|
      if @esparam.update(esparam_params)
        format.html { redirect_to @esparam, notice: 'Esparam was successfully updated.' }
        format.json { render :show, status: :ok, location: @esparam }
      else
        format.html { render :edit }
        format.json { render json: @esparam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /esparams/1
  # DELETE /esparams/1.json
  def destroy
    @esparam.destroy
    respond_to do |format|
      format.html { redirect_to esparams_url, notice: 'Esparam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_esparam
      @esparam = Esparam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def esparam_params
      params.require(:esparam).permit(:name, :tipoestado_id)
    end
end
