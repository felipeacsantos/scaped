class ParametrizacaosController < WorkspaceController
  before_action :set_parametrizacao, only: [:show, :edit, :update, :destroy]

  # GET /parametrizacaos
  # GET /parametrizacaos.json
  def index
    @parametrizacaos = Parametrizacao.all
  end

  # GET /parametrizacaos/1
  # GET /parametrizacaos/1.json
  def show
  end

  # GET /parametrizacaos/new
  def new
    @parametrizacao = Parametrizacao.new
  end

  # GET /parametrizacaos/1/edit
  def edit
  end

  # POST /parametrizacaos
  # POST /parametrizacaos.json
  def create
    @parametrizacao = Parametrizacao.new(parametrizacao_params)

    respond_to do |format|
      if @parametrizacao.save
        format.html { redirect_to @parametrizacao, notice: 'Parametrizacao was successfully created.' }
        format.json { render :show, status: :created, location: @parametrizacao }
      else
        format.html { render :new }
        format.json { render json: @parametrizacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parametrizacaos/1
  # PATCH/PUT /parametrizacaos/1.json
  def update
    respond_to do |format|
      if @parametrizacao.update(parametrizacao_params)
        format.html { redirect_to @parametrizacao, notice: 'Parametrizacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @parametrizacao }
      else
        format.html { render :edit }
        format.json { render json: @parametrizacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parametrizacaos/1
  # DELETE /parametrizacaos/1.json
  def destroy
    @parametrizacao.destroy
    respond_to do |format|
      format.html { redirect_to parametrizacaos_url, notice: 'Parametrizacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parametrizacao
      @parametrizacao = Parametrizacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parametrizacao_params
      params.require(:parametrizacao).permit(:objeto_id, :parametro_id)
    end
end
