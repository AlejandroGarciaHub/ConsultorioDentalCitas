class AppointmentsProceduresController < ApplicationController
  before_action :set_appointments_procedure, only: [:show, :edit, :update, :destroy]
  before_action :set_appointment

  # GET /appointments_procedures
  # GET /appointments_procedures.json
  def index
    @appointments_procedures = AppointmentsProcedure.all
  end

  # GET /appointments_procedures/1
  # GET /appointments_procedures/1.json
  def show
  end

  # GET /appointments_procedures/new
  def new
    @appointments_procedure = AppointmentsProcedure.new
  end

  # GET /appointments_procedures/1/edit
  def edit
  end

  # POST /appointments_procedures
  # POST /appointments_procedures.json
  def create
    @appointments_procedure = AppointmentsProcedure.new(appointments_procedure_params)
    @appointments_procedure.appointment_id=@appointment.id
    respond_to do |format|
      if @appointments_procedure.save
        format.html { redirect_to appointment_appointments_procedure_path(@appointment, @appointments_procedure), notice: 'Appointments procedure was successfully created.' }
        format.json { render :show, status: :created, location: @appointments_procedure }
      else
        format.html { render :new }
        format.json { render json: @appointments_procedure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments_procedures/1
  # PATCH/PUT /appointments_procedures/1.json
  def update
    respond_to do |format|
      if @appointments_procedure.update(appointments_procedure_params)
        format.html { redirect_to appointment_appointments_procedure_path(@appointment, @appointments_procedure), notice: 'Appointments procedure was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointments_procedure }
      else
        format.html { render :edit }
        format.json { render json: @appointments_procedure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments_procedures/1
  # DELETE /appointments_procedures/1.json
  def destroy
    @appointments_procedure.destroy
    respond_to do |format|
      format.html { redirect_to appointment_appointments_procedures_url, notice: 'Appointments procedure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointments_procedure
      @appointments_procedure = AppointmentsProcedure.find(params[:id])
    end

     def set_appointment
      @appointment = Appointment.find(params[:appointment_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointments_procedure_params
      params.require(:appointments_procedure).permit(:anotaciones, :procedure_id)
    end
end
