require 'spec_helper'

describe 'Testing the random generator' do

  before(:all) do
    @random_generator = Generator.new.registration_form_data
  end

  context 'Testing the registration form fields' do

    it 'should return a String for firstname' do
      expect(@random_generator.first_name).to be_kind_of(String)
    end

    it 'should return a String for lastname' do
      expect(@random_generator.last_name).to be_kind_of(String)
    end

    it 'should return a date for date' do
      expect(@random_generator.date).to be_kind_of(Date)
    end

  end


end