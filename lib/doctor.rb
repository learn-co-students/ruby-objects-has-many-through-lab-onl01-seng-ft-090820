require 'pry'
class Doctor 
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(date, patient)
    new_appointment = Appointment.new(date, patient, self)
    new_appointment.doctor = self 
    new_appointment
  end
  
  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end
  
  def patients
    self.appointments.map do |appt|
      appt.patient
    end
  end
  
end 