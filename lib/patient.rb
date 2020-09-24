require 'pry'

class Patient
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def new_appointment(date, doctor)
    new_appt = Appointment.new(date, self, doctor)
  end 
  
  def appointments
    Appointment.all.select {|appt| appt.patient == self} 
  end 
  
  def doctors 
    self.appointments.map do |appt|
      appt.doctor
    end 
  end 
  
end 