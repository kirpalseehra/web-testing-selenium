require 'spec_helper'

describe 'Testing the demo qa automation form' do

  before(:all) do
    # refers to our class that has the driver in and all the methods associated with that class
    @driver = QaToolsForm.new
    @driver.visit_practice_form
    @url = 'https://www.toolsqa.com/automation-practice-form'
    @name = Faker::HarryPotter.character
  end

  context 'Testing the positive paths for the form' do

    it 'should land on the registration page' do 
      expect(@driver.current_url).to eq @url
    end

    it 'should accept a firstname' do
     @driver.input_firstname_field('Kirpal')
     expect(@driver.input_firstname_field_value).to eq 'Kirpal'
    end

  end

end