class TestedefinicaosController < WorkspaceController
  before_action :set_testedefinicao, only: [:show, :edit, :update, :destroy]

  # GET /testedefinicaos
  # GET /testedefinicaos.json
  def index
    @testedefinicaos = Testedefinicao.all
  end

  # GET /testedefinicaos/1
  # GET /testedefinicaos/1.json
  def show
  end

  # GET /testedefinicaos/new
  def new
    @testedefinicao = current_usuario.testedefinicaos.new
  end

  # GET /testedefinicaos/1/edit
  def edit
  end

  # POST /testedefinicaos
  # POST /testedefinicaos.json
  def create
    @testedefinicao = current_usuario.testedefinicaos.new(testedefinicao_params)

    respond_to do |format|
      if @testedefinicao.save
        format.html { redirect_to @testedefinicao, notice: 'Testedefinicao was successfully created.' }
        format.json { render :show, status: :created, location: @testedefinicao }
      else
        format.html { render :new }
        format.json { render json: @testedefinicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testedefinicaos/1
  # PATCH/PUT /testedefinicaos/1.json
  def update
    respond_to do |format|
      if @testedefinicao.update(testedefinicao_params)
        format.html { redirect_to @testedefinicao, notice: 'Testedefinicao was successfully updated.' }
        format.json { render :show, status: :ok, location: @testedefinicao }
      else
        format.html { render :edit }
        format.json { render json: @testedefinicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testedefinicaos/1
  # DELETE /testedefinicaos/1.json
  def destroy
    @testedefinicao.destroy
    respond_to do |format|
      format.html { redirect_to testedefinicaos_url, notice: 'Testedefinicao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testedefinicao
      @testedefinicao = Testedefinicao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testedefinicao_params
      params.require(:testedefinicao).permit(:versao, :texto, :checkvalor, :checkexists, :objeto_id, :criterio_id, :usuario_id)
    end
end
