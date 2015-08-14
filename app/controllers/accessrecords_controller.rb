class AccessrecordsController < ApplicationController
  before_action :set_accessrecord, only: [:show, :edit, :update, :destroy]

  # GET /accessrecords
  # GET /accessrecords.json
  def index
    @accessrecords = Accessrecord.all
  end

  # GET /accessrecords/1
  # GET /accessrecords/1.json
  def show
  end

  # GET /accessrecords/new
  def new
    @accessrecord = Accessrecord.new
  end

  # GET /accessrecords/1/edit
  def edit
  end

  # POST /accessrecords
  # POST /accessrecords.json
  def create
    @accessrecord = Accessrecord.new(accessrecord_params)

    respond_to do |format|
      if @accessrecord.save
        format.html { redirect_to @accessrecord, notice: 'Accessrecord was successfully created.' }
        format.json { render :show, status: :created, location: @accessrecord }
      else
        format.html { render :new }
        format.json { render json: @accessrecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accessrecords/1
  # PATCH/PUT /accessrecords/1.json
  def update
    respond_to do |format|
      if @accessrecord.update(accessrecord_params)
        format.html { redirect_to @accessrecord, notice: 'Accessrecord was successfully updated.' }
        format.json { render :show, status: :ok, location: @accessrecord }
      else
        format.html { render :edit }
        format.json { render json: @accessrecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accessrecords/1
  # DELETE /accessrecords/1.json
  def destroy
    @accessrecord.destroy
    respond_to do |format|
      format.html { redirect_to accessrecords_url, notice: 'Accessrecord was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accessrecord
      @accessrecord = Accessrecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accessrecord_params
      params.require(:accessrecord).permit(:remote_ip)
    end
end
