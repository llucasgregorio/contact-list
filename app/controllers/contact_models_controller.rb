class ContactModelsController < ApplicationController
  before_action :set_contact_model, only: [:show, :edit, :update, :destroy]

  # GET /contact_models
  # GET /contact_models.json
  #List all contacts
  def index
    @contact_models = ContactModel.all
  end

  # GET /contact_models/1
  # GET /contact_models/1.json
  #contact
  def show
  end

  # GET /contact_models/new
  def new
    @contact_model = ContactModel.new
  end

  # GET /contact_models/1/edit
  def edit
  end

  # POST /contact_models
  # POST /contact_models.json
  def create
    @contact_model = ContactModel.new(contact_model_params)

    respond_to do |format|
      if @contact_model.save
        format.html { redirect_to @contact_model, notice: 'Contact model was successfully created.' }
        format.json { render :show, status: :created, location: @contact_model }
      else
        format.html { render :new }
        format.json { render json: @contact_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_models/1
  # PATCH/PUT /contact_models/1.json
  def update
    respond_to do |format|
      if @contact_model.update(contact_model_params)
        format.html { redirect_to @contact_model, notice: 'Contact model was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact_model }
      else
        format.html { render :edit }
        format.json { render json: @contact_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_models/1
  # DELETE /contact_models/1.json
  def destroy
    @contact_model.destroy
    respond_to do |format|
      format.html { redirect_to contact_models_url, notice: 'Contact model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_model
      @contact_model = ContactModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_model_params
      params.require(:contact_model).permit(:name, :telefone)
    end
end
