class TestingResourcesController < ApplicationController
  before_action :set_testing_resource, only: %i[ show edit update destroy ]

  # GET /testing_resources or /testing_resources.json
  def index
    @testing_resources = TestingResource.all
  end

  # GET /testing_resources/1 or /testing_resources/1.json
  def show
  end

  # GET /testing_resources/new
  def new
    @testing_resource = TestingResource.new
  end

  # GET /testing_resources/1/edit
  def edit
  end

  # POST /testing_resources or /testing_resources.json
  def create
    @testing_resource = TestingResource.new(testing_resource_params)

    respond_to do |format|
      if @testing_resource.save
        format.html { redirect_to testing_resource_url(@testing_resource), notice: "Testing resource was successfully created." }
        format.json { render :show, status: :created, location: @testing_resource }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @testing_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testing_resources/1 or /testing_resources/1.json
  def update
    respond_to do |format|
      if @testing_resource.update(testing_resource_params)
        format.html { redirect_to testing_resource_url(@testing_resource), notice: "Testing resource was successfully updated." }
        format.json { render :show, status: :ok, location: @testing_resource }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @testing_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testing_resources/1 or /testing_resources/1.json
  def destroy
    @testing_resource.destroy

    respond_to do |format|
      format.html { redirect_to testing_resources_url, notice: "Testing resource was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testing_resource
      @testing_resource = TestingResource.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testing_resource_params
      params.require(:testing_resource).permit(:title)
    end
end
