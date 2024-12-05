class Doctor
  attr_reader :name , :appointments
  
  @@all = []
  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient , date)
    #p  date
    #p patient
    temp = Appointment.new(date , patient , self)
    @appointments << temp
    return temp
  end
  
  def appointments
    @appointments
  end
  
  def patients
    appointments.each do |i|
      @patients << i.patient
    end
    @patients
  end
  
  
end