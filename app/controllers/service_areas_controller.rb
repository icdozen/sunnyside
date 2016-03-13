class ServiceAreasController < ApplicationController
  before_action :set_service_area, only: [:show, :edit, :update, :destroy]

  # GET /service_areas
  # GET /service_areas.json
  def index

    #Twitter stuff ---------------------------
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "  ePDzJfVWE3O4sMUdwtXJXA9ER"
      config.consumer_secret     = " 79nDfzyYYlU9CDUFcrXWwDyS6RHmoXXF43zRQs73D8iXepLA3A"
      config.access_token        = "708752668689375232-JBTDr9aVUTr9DWLTA4bJJc4KnoO3aDO"
      config.access_token_secret = " oT6wb5RKuUAsX7V0HQuhzpjVM4l6770SMbqYVxgKc6VvE"
    end

    @tweetOutput = []
    # @client.search("to:justinbieber marry me", result_type: "recent").take(3).each do |tweet|
    #     @tweetOutput << tweet.text
    #  end

    #twitterUserFind = client.user("sssolar")
    # End of Twitter stuff --------------------


    @service_areas = ServiceArea.all
  end

  # GET /service_areas/1
  # GET /service_areas/1.json
  def show
  end

  # GET /service_areas/new
  def new
    @service_area = ServiceArea.new
  end

  # GET /service_areas/1/edit
  def edit
  end

  # POST /service_areas
  # POST /service_areas.json
  def create
    @service_area = ServiceArea.new(service_area_params)

    respond_to do |format|
      if @service_area.save
        format.html { redirect_to @service_area, notice: 'Service area was successfully created.' }
        format.json { render :show, status: :created, location: @service_area }
      else
        format.html { render :new }
        format.json { render json: @service_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_areas/1
  # PATCH/PUT /service_areas/1.json
  def update
    respond_to do |format|
      if @service_area.update(service_area_params)
        format.html { redirect_to @service_area, notice: 'Service area was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_area }
      else
        format.html { render :edit }
        format.json { render json: @service_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_areas/1
  # DELETE /service_areas/1.json
  def destroy
    @service_area.destroy
    respond_to do |format|
      format.html { redirect_to service_areas_url, notice: 'Service area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_area
      @service_area = ServiceArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_area_params
      params.require(:service_area).permit(:lat, :long, :scope, :radi)
    end
end
