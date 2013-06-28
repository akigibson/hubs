class OrganizationNamesController < ApplicationController
  # GET /organization_names
  # GET /organization_names.json
  def index
    @organization_names = OrganizationName.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @organization_names }
    end
  end

  # GET /organization_names/1
  # GET /organization_names/1.json
  def show
    @organization_name = OrganizationName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @organization_name }
    end
  end

  # GET /organization_names/new
  # GET /organization_names/new.json
  def new
    @organization_name = OrganizationName.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @organization_name }
    end
  end

  # GET /organization_names/1/edit
  def edit
    @organization_name = OrganizationName.find(params[:id])
  end

  # POST /organization_names
  # POST /organization_names.json
  def create
    @organization_name = OrganizationName.new(params[:organization_name])

    respond_to do |format|
      if @organization_name.save
        format.html { redirect_to @organization_name, notice: 'Organization name was successfully created.' }
        format.json { render json: @organization_name, status: :created, location: @organization_name }
      else
        format.html { render action: "new" }
        format.json { render json: @organization_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /organization_names/1
  # PUT /organization_names/1.json
  def update
    @organization_name = OrganizationName.find(params[:id])

    respond_to do |format|
      if @organization_name.update_attributes(params[:organization_name])
        format.html { redirect_to @organization_name, notice: 'Organization name was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @organization_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_names/1
  # DELETE /organization_names/1.json
  def destroy
    @organization_name = OrganizationName.find(params[:id])
    @organization_name.destroy

    respond_to do |format|
      format.html { redirect_to organization_names_url }
      format.json { head :no_content }
    end
  end
end
