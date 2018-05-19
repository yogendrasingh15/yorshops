class TonguestunsController < ApplicationController
  before_action :set_tonguestun, only: [:show, :edit, :update, :destroy]

  # GET /tonguestuns
  # GET /tonguestuns.json
  def index
   @appointments = Appointment.all
  end

  # GET /tonguestuns/1
  # GET /tonguestuns/1.json
  def show
  end

  # GET /tonguestuns/new
  def new
    @tonguestun = Tonguestun.new
    @appointments = Appointment.all
    @doctors = Doctor.all.pluck('name,id')
    @patients = Patient.all.pluck('name,id')
  end

  # GET /tonguestuns/1/edit
  def edit
  end

  # POST /tonguestuns
  # POST /tonguestuns.json
  def create
    if params[:form_id] == "patient"
      patient = Patient.new
      patient.name = tonguestun_params[:name]
      patient.mobile = tonguestun_params[:mobile]
      patient.save!
    elsif params[:form_id] == "doctor"
      doctor = Doctor.new
      doctor.name = tonguestun_params[:name]
      doctor.mobile = tonguestun_params[:mobile]
      doctor.specification = tonguestun_params[:specification]
      doctor.save!
    elsif params[:form_id] == "appointment"
        appointment = Appointment.new
        appointment.doctor_id = tonguestun_params[:doctor_id]
        appointment.patient_id = tonguestun_params[:patient_id]
        appointment.diseases = tonguestun_params[:diseases]
        appointment.save!
    end
    @appointments = Appointment.all
  end

  # PATCH/PUT /tonguestuns/1
  # PATCH/PUT /tonguestuns/1.json
  def update
    respond_to do |format|
      if @tonguestun.update(tonguestun_params)
        format.html { redirect_to @tonguestun, notice: 'Tonguestun was successfully updated.' }
        format.json { render :show, status: :ok, location: @tonguestun }
      else
        format.html { render :edit }
        format.json { render json: @tonguestun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tonguestuns/1
  # DELETE /tonguestuns/1.json
  def destroy
    @tonguestun.destroy
    respond_to do |format|
      format.html { redirect_to tonguestuns_url, notice: 'Tonguestun was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tonguestun
      @tonguestun = Tonguestun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tonguestun_params
      params.fetch(:tonguestun, {})
    end
end
