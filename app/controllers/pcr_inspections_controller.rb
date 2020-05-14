class PcrInspectionsController < ApplicationController
  before_action :set_pcr_inspection, only: [:show, :edit, :update, :destroy]

  # GET /pcr_inspections
  # GET /pcr_inspections.json
  def index
    @pcr_inspections = PcrInspection.all
  end

  # GET /pcr_inspections/1
  # GET /pcr_inspections/1.json
  def show
  end

  # GET /pcr_inspections/new
  def new
    @pcr_inspection = PcrInspection.new
  end

  # GET /pcr_inspections/1/edit
  def edit
  end

  # POST /pcr_inspections
  # POST /pcr_inspections.json
  def create
    @pcr_inspection = PcrInspection.new(pcr_inspection_params)

    respond_to do |format|
      if @pcr_inspection.save
        format.html { redirect_to @pcr_inspection, notice: 'Pcr inspection was successfully created.' }
        format.json { render :show, status: :created, location: @pcr_inspection }
      else
        format.html { render :new }
        format.json { render json: @pcr_inspection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pcr_inspections/1
  # PATCH/PUT /pcr_inspections/1.json
  def update
    respond_to do |format|
      if @pcr_inspection.update(pcr_inspection_params)
        format.html { redirect_to @pcr_inspection, notice: 'Pcr inspection was successfully updated.' }
        format.json { render :show, status: :ok, location: @pcr_inspection }
      else
        format.html { render :edit }
        format.json { render json: @pcr_inspection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pcr_inspections/1
  # DELETE /pcr_inspections/1.json
  def destroy
    @pcr_inspection.destroy
    respond_to do |format|
      format.html { redirect_to pcr_inspections_url, notice: 'Pcr inspection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pcr_inspection
      @pcr_inspection = PcrInspection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pcr_inspection_params
      params.require(:pcr_inspection).permit(:subject_id, :clinic_id, :result, :remarks)
    end
end
