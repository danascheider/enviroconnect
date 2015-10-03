class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :edit, :update, :destroy]

  # GET /organizations
  # GET /organizations.json
  def index
    @organizations = Organization.all
  end

  # GET /organizations/1
  # GET /organizations/1.json
  def show
  end

  # GET /organizations/new
  def new
    @organization = Organization.new
  end

  # GET /organizations/1/edit
  def edit
  end

  # POST /organizations
  # POST /organizations.json
  def create
    @organization = Organization.new(organization_params)

    respond_to do |format|
      if @organization.save
        success format, 'Organization was successfully created.'
      else
        failure format, :new
      end
    end
  end

  # PATCH/PUT /organizations/1
  # PATCH/PUT /organizations/1.json
  def update
    respond_to do |format|
      if @organization.update(organization_params)
        success format, 'Organization was successfully udpated.'
      else
        failure format, :edit
      end
    end
  end

  # DELETE /organizations/1
  # DELETE /organizations/1.json
  def destroy
    @organization.destroy
    respond_to do |format|
      format.html { redirect_to organizations_url, notice: 'Organization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find(params[:id])
    end

    # Handle successful creation or update of organization
    def success(format, notice='Organization was successfully saved.')
      format.html { redirect_to @organization, notice: notice }
      format.json { render :show, status: :ok, location: @organization }
    end

    # Handle invalid creation or update of organization
    def failure(format, nexxt)
      format.html { render nexxt }
      format.json { render json: @organization.errors, status: :unprocessable_entity }
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_params
      params.require(:organization).permit(:name, :mission, :type, :phone, :address_1, :address_2, :city, :state, :zip)
    end
end
