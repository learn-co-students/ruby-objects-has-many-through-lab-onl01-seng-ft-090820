class Doctor
  attr_accessor :name, :patient, :appointment
  
  @@all = []
  
  def initialize(name)
    @name = name
    @patient = patient
    @appointment = appointment
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, a_name)
    appointment = Appointment.new(date, a_name, self)
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  def patients
    self.appointments.map {|appointment| appointment.patient}
  end
end