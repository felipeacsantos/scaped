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

  def create_file
    param_id = 0
    tipo = ''
    oval = Nokogiri::XML::Builder.new do |xml|
      xml.oval_definitions('xmlns' => 'http://oval.mitre.org/XMLSchema/oval-definitions-5', 
      'xmlns:xsi' => 'http://www.w3.org/2001/XMLSchema-instance',
      'xmlns:oval' => 'http://oval.mitre.org/XMLSchema/oval-common-5',
      'xmlns:oval-def' => 'http://oval.mitre.org/XMLSchema/oval-definitions-5',
      'xsi:schemaLocation' => 'http://oval.mitre.org/XMLSchema/oval-definitions-5 oval-definitions-schema.xsd http://oval.mitre.org/XMLSchema/oval-common-5 oval-common-schema.xsd') do
        xml.generator do
          xml['oval'].product_name 'SCAPEd Web'
          xml['oval'].product_version '0.7.1'
          xml['oval'].schema_version '5.11.2'
          xml['oval'].timestamp Time.now.to_s
        end
        xml.definitions do
          Testedefinicao.all.each do |definicao|
            xml.definition('id' => "oval:com.scaped:def:#{definicao.id.to_s}", 'version' => definicao.versao.to_s == '' ? '1' : definicao.versao.to_s, 'class' => 'compliance') do
              xml.metadata do
                xml.title_ definicao.texto.to_s
                xml.description_ ''
              end
              if definicao.objeto != nil then
                xml.criteria do
                  xml.criterion('comment' => '...', 'test_ref' => "oval:com.scaped:tst:#{definicao.criterio.id.to_s}")
                end
              end
            end
          end
        end
        xml.tests do
          Testedefinicao.all.each do |definicao|
            Objetovalparametro.all.each do |valor|
              if definicao.objeto.id == valor.objeto.id then
                param_id = valor.valparametro.id
              end
            end
            Valparametro.all.each do |valor|
              if valor.id == param_id
                param_id = valor.parametro.id
              end
            end
            Parametro.all.each do |valor|
              if valor.id == param_id
                tipo = Tipoobjeto.find(valor.tipoobjeto).descricao.split('_')[0]
              end
            end
            xml.send("#{tipo}_test").test('check' => definicao.checkvalor, 'check_existence' => definicao.checkexists, 'comment' => '..', 'id' => "oval:com.scaped:tst:#{definicao.criterio.id.to_s}", 'version' => definicao.versao) do
              xml.object_('object_ref' => "oval:com.scaped:obj:#{definicao.objeto.id.to_s}")
              Criterioestado.all.each do |estado|
                if estado.criterio_id == definicao.criterio_id then
                  xml.state_('state_ref' =>  "oval:com.scaped:ste:#{estado.estado.id.to_s}")
                end
              end
            end
          end
        end
        xml.objects do
          Objeto.all.each do |objeto|
            xml.send("#{tipo}_object").test('id' => "oval:com.scaped:obj:#{objeto.id}", 'version' => '1') do
              Objetovalparametro.all.each do |valor|
                if objeto.id == valor.objeto.id then
                  xml.method_missing(valor.valparametro.parametro.name.gsub(' ','_'), valor.valparametro.valor) 
                end
              end
            end
          end
        end
        xml.states do
          Estado.all.each do |estado|
            xml.send("#{tipo}_state").test('id' => "oval:com.scaped:ste:#{estado.id}", 'version' => '1') do
              Estadoesvalparam.all.each do |valor|
                if estado.id == valor.estado.id then
                  xml.method_missing(valor.esvalparam.esparam.name.gsub(' ','_'), valor.esvalparam.valor) 
                end
              end
            end
          end
        end
      end
    end
    send_data(oval.to_xml.to_s.gsub('class="test" ','').gsub('<_','<'), :type => 'text/xml', :filename => 'sample.xml')
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
