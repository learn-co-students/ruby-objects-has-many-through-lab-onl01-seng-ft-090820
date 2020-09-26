class Patient

  attr_accessor :name, :appointments, :doctors
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient == self }
  end

   def doctors
    Appointment.all.map { |appointment| appointment.doctor }
  end

  def new_appointment(appointment, doctor)
    Appointment.new(appointment, self, doctor)
  end

end 