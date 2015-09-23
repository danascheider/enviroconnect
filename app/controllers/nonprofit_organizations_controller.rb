class NonprofitOrganizationsController < ApplicationController
  before_action :set_nonprofit_organization, only: [:show, :edit, :update, :destroy]

  # GET /nonprofit_organizations
  # GET /nonprofit_organizations.json
  def index
    @nonprofit_organizations = NonprofitOrganization.all
  end

  # GET /nonprofit_organizations/1
  # GET /nonprofit_organizations/1.json
  def show
    redirect_to "/organizations/#{@nonprofit_organization.id}"
  end

  # GET /nonprofit_organizations/new
  def new
    @nonprofit_organization = NonprofitOrganization.new
  end

  # GET /nonprofit_organizations/1/edit
  def edit
    redirect_to "/organizations/#{@nonprofit_organization.id}/edit"
  end

  # POST /nonprofit_organizations
  # POST /nonprofit_organizations.json
  def create
    @nonprofit_organization = NonprofitOrganization.new(nonprofit_organization_params)

    respond_to do |format|
      if @nonprofit_organization.save
        format.html { redirect_to @nonprofit_organization, notice: 'Nonprofit organization was successfully created.' }
        format.json { render :show, status: :created, location: @nonprofit_organization }
      else
        format.html { render :new }
        format.json { render json: @nonprofit_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nonprofit_organizations/1
  # PATCH/PUT /nonprofit_organizations/1.json
  def update
    respond_to do |format|
      if @nonprofit_organization.update(nonprofit_organization_params)
        format.html { redirect_to @nonprofit_organization, notice: 'Nonprofit organization was successfully updated.' }
        format.json { render :show, status: :ok, location: @nonprofit_organization }
      else
        format.html { render :edit }
        format.json { render json: @nonprofit_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nonprofit_organizations/1
  # DELETE /nonprofit_organizations/1.json
  def destroy
    @nonprofit_organization.destroy
    respond_to do |format|
      format.html { redirect_to nonprofit_organizations_url, notice: 'Nonprofit organization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nonprofit_organization
      @nonprofit_organization = NonprofitOrganization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nonprofit_organization_params
      params[:nonprofit_organization]
    end
end
