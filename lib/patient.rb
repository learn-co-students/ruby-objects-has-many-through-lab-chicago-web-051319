class Patient
  
  @@all = []
  
  
  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor , date)
    temp = Appointment.new(date , self , doctor)
    appointments << temp
    return temp
  end
  
  def appointments
    @appointments
  end
  
  def doctors
    appointments.each do |i|
      @doctors << i.doctor
    end
    @doctors
  end
end