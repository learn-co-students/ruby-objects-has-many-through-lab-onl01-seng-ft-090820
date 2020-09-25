class Patient
  
  attr_accessor :name, :appointment
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, doctor)
    new_appointment = Appointment.new(date, self, doctor)
  end
    
  def appointments
    Appointment.all.select { |appointment| appointment.patient == self }
  end
  
  def doctors
   appointments.map { |a| a.doctor }
  end
  
end