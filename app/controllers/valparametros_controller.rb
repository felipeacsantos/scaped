class ValparametrosController < WorkspaceController
  before_action :set_valparametro, only: [:show, :edit, :update, :destroy]

  # GET /valparametros
  # GET /valparametros.json
  def index
    @valparametros = Valparametro.all
  end

  # GET /valparametros/1
  # GET /valparametros/1.json
  def show
  end

  # GET /valparametros/new
  def new
    @valparametro = current_usuario.valparametros.new
    if params[:parametro_id]
      @valparametro.parametro_id = params[:parametro_id]
    end
  end

  # GET /valparametros/1/edit
  def edit
  end

  # POST /valparametros
  # POST /valparametros.json
  def create
    @valparametro = current_usuario.valparametros.new(valparametro_params)

    respond_to do |format|
      if @valparametro.save
        format.html { redirect_to @valparametro, notice: 'Valparametro was successfully created.' }
        format.json { render :show, status: :created, location: @valparametro }
      else
        format.html { render :new }
        format.json { render json: @valparametro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /valparametros/1
  # PATCH/PUT /valparametros/1.json
  def update
    respond_to do |format|
      if @valparametro.update(valparametro_params)
        format.html { redirect_to @valparametro, notice: 'Valparametro was successfully updated.' }
        format.json { render :show, status: :ok, location: @valparametro }
      else
        format.html { render :edit }
        format.json { render json: @valparametro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /valparametros/1
  # DELETE /valparametros/1.json
  def destroy
    @valparametro.destroy
    respond_to do |format|
      format.html { redirect_to valparametros_url, notice: 'Valparametro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_valparametro
      @valparametro = Valparametro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def valparametro_params
      params.require(:valparametro).permit(:valor, :parametro_id)
    end
end
