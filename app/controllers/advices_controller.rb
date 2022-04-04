class AdvicesController < ApplicationController
  def create
    @appointment = Appointment.find(params[:appointment_id])
    @advice = @appointment.advices.create(advice_params)
    redirect_to appointment_path(@appointment)
  end

  private
  def advice_params
    params.require(:advice).permit(:doctor_id, :appointment_id, :body)
  end
end
