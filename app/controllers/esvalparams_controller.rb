class EsvalparamsController < ApplicationController
  before_action :set_esvalparam, only: [:show, :edit, :update, :destroy]

  # GET /esvalparams
  # GET /esvalparams.json
  def index
    @esvalparams = Esvalparam.all
  end

  # GET /esvalparams/1
  # GET /esvalparams/1.json
  def show
  end

  # GET /esvalparams/new
  def new
    @esvalparam = Esvalparam.new
  end

  # GET /esvalparams/1/edit
  def edit
  end

  # POST /esvalparams
  # POST /esvalparams.json
  def create
    @esvalparam = Esvalparam.new(esvalparam_params)

    respond_to do |format|
      if @esvalparam.save
        format.html { redirect_to @esvalparam, notice: 'Esvalparam was successfully created.' }
        format.json { render :show, status: :created, location: @esvalparam }
      else
        format.html { render :new }
        format.json { render json: @esvalparam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /esvalparams/1
  # PATCH/PUT /esvalparams/1.json
  def update
    respond_to do |format|
      if @esvalparam.update(esvalparam_params)
        format.html { redirect_to @esvalparam, notice: 'Esvalparam was successfully updated.' }
        format.json { render :show, status: :ok, location: @esvalparam }
      else
        format.html { render :edit }
        format.json { render json: @esvalparam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /esvalparams/1
  # DELETE /esvalparams/1.json
  def destroy
    @esvalparam.destroy
    respond_to do |format|
      format.html { redirect_to esvalparams_url, notice: 'Esvalparam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_esvalparam
      @esvalparam = Esvalparam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def esvalparam_params
      params.require(:esvalparam).permit(:valor, :esparam_id)
    end
end
