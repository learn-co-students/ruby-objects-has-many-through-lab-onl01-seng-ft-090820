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
  
  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end 
  
  def new_appointment(date, patient)
    new_appointment = Appointment.new(date, patient, self)
  end
  
  def patients
    appointments.map { |a| a.patient }
  end
  
end