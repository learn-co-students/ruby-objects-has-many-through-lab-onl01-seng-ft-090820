class Patient

  attr_accessor :name, :appointment

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    new_appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    appointments.map {|appointment| appointment.doctor}
  end

end