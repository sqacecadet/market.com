class TypePartnersController < ApplicationController
  before_action :set_type_partner, only: [:show, :edit, :update, :destroy]

  # GET /type_partners
  # GET /type_partners.json
  def index
    @type_partners = TypePartner.all
  end

  # GET /type_partners/1
  # GET /type_partners/1.json
  def show
  end

  # GET /type_partners/new
  def new
    @type_partner = TypePartner.new
  end

  # GET /type_partners/1/edit
  def edit
  end

  # POST /type_partners
  # POST /type_partners.json
  def create
    @type_partner = TypePartner.new(type_partner_params)

    respond_to do |format|
      if @type_partner.save
        format.html { redirect_to @type_partner, notice: 'Type partner was successfully created.' }
        format.json { render :show, status: :created, location: @type_partner }
      else
        format.html { render :new }
        format.json { render json: @type_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_partners/1
  # PATCH/PUT /type_partners/1.json
  def update
    respond_to do |format|
      if @type_partner.update(type_partner_params)
        format.html { redirect_to @type_partner, notice: 'Type partner was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_partner }
      else
        format.html { render :edit }
        format.json { render json: @type_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_partners/1
  # DELETE /type_partners/1.json
  def destroy
    @type_partner.destroy
    respond_to do |format|
      format.html { redirect_to type_partners_url, notice: 'Type partner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_partner
      @type_partner = TypePartner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_partner_params
      params.require(:type_partner).permit(:type, :description, :documents_id)
    end
end
