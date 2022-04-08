module DoctorHelper
  def can_have_more?
    self.appointments.count - self.advices.count < 10
  end
end