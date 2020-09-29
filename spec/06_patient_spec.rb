require 'spec_helper'

describe 'Patient' do
  describe '#new' do
    it 'initializes with a name' do
      expect { Patient.new('Devin') }.to_not raise_error
    end
  end

  describe '#new_appointment' do
    it 'given a date and doctor, creates a new appointment belonging to that patient' do
      doctor_who = Doctor.new('The Doctor')
      hevydevy = Patient.new('Devin Townsend')
      appointment = hevydevy.new_appointment('Friday, January 32nd', doctor_who)

      expect(hevydevy.appointments).to include(appointment)
      expect(appointment.patient).to eq(hevydevy)
    end
  end

  describe '.all' do
    it 'knows about all patients' do
      zero = Patient.new('Zero')
      good = Patient.new('Good')

      expect(Patient.all).to include(zero)
      expect(Patient.all).to include(good)
    end
  end
end
