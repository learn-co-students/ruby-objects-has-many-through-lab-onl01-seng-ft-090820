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
    new_appointment = Appointment.new(date, self, doctor)
  end 
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end 
  
  def doctors 
    appointments.map do |appoints|
      appoints.doctor
    end 
  end 
end 