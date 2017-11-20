class CriterioestadosController < ApplicationController
  before_action :set_criterioestado, only: [:show, :edit, :update, :destroy]

  # GET /criterioestados
  # GET /criterioestados.json
  def index
    @criterioestados = Criterioestado.all
  end

  # GET /criterioestados/1
  # GET /criterioestados/1.json
  def show
  end

  # GET /criterioestados/new
  def new
    @criterioestado = Criterioestado.new
  end

  # GET /criterioestados/1/edit
  def edit
  end

  # POST /criterioestados
  # POST /criterioestados.json
  def create
    @criterioestado = Criterioestado.new(criterioestado_params)

    respond_to do |format|
      if @criterioestado.save
        format.html { redirect_to @criterioestado, notice: 'Criterioestado was successfully created.' }
        format.json { render :show, status: :created, location: @criterioestado }
      else
        format.html { render :new }
        format.json { render json: @criterioestado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /criterioestados/1
  # PATCH/PUT /criterioestados/1.json
  def update
    respond_to do |format|
      if @criterioestado.update(criterioestado_params)
        format.html { redirect_to @criterioestado, notice: 'Criterioestado was successfully updated.' }
        format.json { render :show, status: :ok, location: @criterioestado }
      else
        format.html { render :edit }
        format.json { render json: @criterioestado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /criterioestados/1
  # DELETE /criterioestados/1.json
  def destroy
    @criterioestado.destroy
    respond_to do |format|
      format.html { redirect_to criterioestados_url, notice: 'Criterioestado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_criterioestado
      @criterioestado = Criterioestado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def criterioestado_params
      params.require(:criterioestado).permit(:criterio_id, :estado_id)
    end
end
