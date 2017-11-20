class ObjetovalparametrosController < WorkspaceController
  before_action :set_objetovalparametro, only: [:show, :edit, :update, :destroy]

  # GET /objetovalparametros
  # GET /objetovalparametros.json
  def index
    @objetovalparametros = Objetovalparametro.all
  end

  # GET /objetovalparametros/1
  # GET /objetovalparametros/1.json
  def show
  end

  # GET /objetovalparametros/new
  def new
    @objetovalparametro = Objetovalparametro.new
  end

  # GET /objetovalparametros/1/edit
  def edit
  end

  # POST /objetovalparametros
  # POST /objetovalparametros.json
  def create
    @objetovalparametro = Objetovalparametro.new(objetovalparametro_params)

    respond_to do |format|
      if @objetovalparametro.save
        format.html { redirect_to @objetovalparametro, notice: 'Objetovalparametro was successfully created.' }
        format.json { render :show, status: :created, location: @objetovalparametro }
      else
        format.html { render :new }
        format.json { render json: @objetovalparametro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /objetovalparametros/1
  # PATCH/PUT /objetovalparametros/1.json
  def update
    respond_to do |format|
      if @objetovalparametro.update(objetovalparametro_params)
        format.html { redirect_to @objetovalparametro, notice: 'Objetovalparametro was successfully updated.' }
        format.json { render :show, status: :ok, location: @objetovalparametro }
      else
        format.html { render :edit }
        format.json { render json: @objetovalparametro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objetovalparametros/1
  # DELETE /objetovalparametros/1.json
  def destroy
    @objetovalparametro.destroy
    respond_to do |format|
      format.html { redirect_to objetovalparametros_url, notice: 'Objetovalparametro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_objetovalparametro
      @objetovalparametro = Objetovalparametro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def objetovalparametro_params
      params.require(:objetovalparametro).permit(:objeto_id, :valparametro_id)
    end
end
