require 'spec_helper'

describe 'Testing the demo qa automation form' do

  before(:all) do
    # refers to our class that has the driver in and all the methods associated with that class
    @driver = RegistrationForm.new
    @driver.visit_practice_form
    @url = 'https://www.toolsqa.com/automation-practice-form'
    @firstname = Generator.new.registration_form_data.first_name
    @lastname = Generator.new.registration_form_data.last_name
    @date = Generator.new.registration_form_data.date.to_s

  end

  context 'Testing the positive paths for the form' do

    it 'should land on the registration page' do 
      expect(@driver.current_url).to eq @url
    end

    it 'should accept a firstname' do
     @driver.input_firstname_field(@firstname)
     expect(@driver.input_firstname_field_value).to eq @firstname
    end

    it 'should accept a lastname' do
    @driver.input_lastname_field(@lastname)
    expect(@driver.input_lastname_field_value).to eq @lastname
    end

    it 'should accept a date' do
      @driver.date_field(@date)
      expect(@driver.date_field_value).to eq @date
    end

    it 'should select male as a gender type' do 
      @driver.input_gender_radio_field
      expect(@driver.input_gender_radio_field_value).to eq 'Male'
    end

    it 'should select 5 as the years of experience' do
      @driver.input_exp_radio_field
      expect(@driver.input_exp_radio_field_value).to eq "5"
    end

    it 'should select automation tester as the profession' do 
      @driver.input_prof_checkbox_field
      expect(@driver.input_prof_checkbox_field_value).to eq "Automation Tester"
    end

    it 'should select the choose file button on profile picture' do
      @driver.input_profile_pic_field
      expect(@driver.input_profile_pic_field_value). to eq ""
    end

    it 'should select QTP as the automation tool' do

      @driver.input_automation_tool_field
      expect(@driver.input_automation_tool_field_value).to eq "QTP"

    end

  end

end