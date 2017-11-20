class TipoestadosController < ApplicationController
  before_action :set_tipoestado, only: [:show, :edit, :update, :destroy]

  # GET /tipoestados
  # GET /tipoestados.json
  def index
    @tipoestados = Tipoestado.all
  end

  # GET /tipoestados/1
  # GET /tipoestados/1.json
  def show
  end

  # GET /tipoestados/new
  def new
    @tipoestado = Tipoestado.new
  end

  # GET /tipoestados/1/edit
  def edit
  end

  # POST /tipoestados
  # POST /tipoestados.json
  def create
    @tipoestado = Tipoestado.new(tipoestado_params)

    respond_to do |format|
      if @tipoestado.save
        format.html { redirect_to @tipoestado, notice: 'Tipoestado was successfully created.' }
        format.json { render :show, status: :created, location: @tipoestado }
      else
        format.html { render :new }
        format.json { render json: @tipoestado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipoestados/1
  # PATCH/PUT /tipoestados/1.json
  def update
    respond_to do |format|
      if @tipoestado.update(tipoestado_params)
        format.html { redirect_to @tipoestado, notice: 'Tipoestado was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipoestado }
      else
        format.html { render :edit }
        format.json { render json: @tipoestado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipoestados/1
  # DELETE /tipoestados/1.json
  def destroy
    @tipoestado.destroy
    respond_to do |format|
      format.html { redirect_to tipoestados_url, notice: 'Tipoestado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipoestado
      @tipoestado = Tipoestado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipoestado_params
      params.require(:tipoestado).permit(:descricao)
    end
end
