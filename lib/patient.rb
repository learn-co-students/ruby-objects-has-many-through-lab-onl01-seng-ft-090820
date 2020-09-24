class Patient
  
  attr_accessor :name, :doctor, :appointment
  
  @@all = []
  
  def initialize(name)
    @name = name
    @doctor = doctor
    @appointment = appointment
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, a_name)
    appointment = Appointment.new(date, self, a_name)
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    self.appointments.map {|appointment| appointment.doctor}
  end
end