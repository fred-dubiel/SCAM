class ApprendicesController < ApplicationController
  before_action :set_apprendice, only: [:show, :edit, :update, :destroy]

  # GET /apprendices
  # GET /apprendices.json
  def index
    @apprendices = Apprendice.all
  end

  # GET /apprendices/1
  # GET /apprendices/1.json
  def show
  end

  # GET /apprendices/new
  def new
    @apprendice = Apprendice.new
  end

  # GET /apprendices/1/edit
  def edit
  end

  # POST /apprendices
  # POST /apprendices.json
  def create
    @apprendice = Apprendice.new(apprendice_params)

    respond_to do |format|
      if @apprendice.save
        format.html { redirect_to @apprendice, notice: 'Apprendice was successfully created.' }
        format.json { render :show, status: :created, location: @apprendice }
      else
        format.html { render :new }
        format.json { render json: @apprendice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apprendices/1
  # PATCH/PUT /apprendices/1.json
  def update
    respond_to do |format|
      if @apprendice.update(apprendice_params)
        format.html { redirect_to @apprendice, notice: 'Apprendice was successfully updated.' }
        format.json { render :show, status: :ok, location: @apprendice }
      else
        format.html { render :edit }
        format.json { render json: @apprendice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apprendices/1
  # DELETE /apprendices/1.json
  def destroy
    @apprendice.destroy
    respond_to do |format|
      format.html { redirect_to apprendices_url, notice: 'Apprendice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apprendice
      @apprendice = Apprendice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apprendice_params
      params.require(:apprendice).permit(:name, :warname, :photo, :allergy, :medicines, :obsevation)
    end
end
