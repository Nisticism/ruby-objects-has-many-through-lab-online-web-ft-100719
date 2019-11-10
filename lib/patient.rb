class Patient
  
  @@all = []
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(self, date, doctor)
    appointment
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end
  
  
  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end
  
  def self.all
    @@all 
  end
  
  
end