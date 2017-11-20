class TipoobjetosController < WorkspaceController
  before_action :set_tipoobjeto, only: [:show, :edit, :update, :destroy]

  # GET /tipoobjetos
  # GET /tipoobjetos.json
  def index
    @tipoobjetos = Tipoobjeto.all
  end

  # GET /tipoobjetos/1
  # GET /tipoobjetos/1.json
  def show
  end

  # GET /tipoobjetos/new
  def new
    @tipoobjeto = Tipoobjeto.new
  end

  # GET /tipoobjetos/1/edit
  def edit
  end

  # POST /tipoobjetos
  # POST /tipoobjetos.json
  def create
    @tipoobjeto = Tipoobjeto.new(tipoobjeto_params)

    respond_to do |format|
      if @tipoobjeto.save
        format.html { redirect_to @tipoobjeto, notice: 'Tipoobjeto was successfully created.' }
        format.json { render :show, status: :created, location: @tipoobjeto }
      else
        format.html { render :new }
        format.json { render json: @tipoobjeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipoobjetos/1
  # PATCH/PUT /tipoobjetos/1.json
  def update
    respond_to do |format|
      if @tipoobjeto.update(tipoobjeto_params)
        format.html { redirect_to @tipoobjeto, notice: 'Tipoobjeto was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipoobjeto }
      else
        format.html { render :edit }
        format.json { render json: @tipoobjeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipoobjetos/1
  # DELETE /tipoobjetos/1.json
  def destroy
    @tipoobjeto.destroy
    respond_to do |format|
      format.html { redirect_to tipoobjetos_url, notice: 'Tipoobjeto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipoobjeto
      @tipoobjeto = Tipoobjeto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipoobjeto_params
      params.require(:tipoobjeto).permit(:descricao)
    end
end
