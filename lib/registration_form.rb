require 'selenium-webdriver'

class RegistrationForm

  # Page object which is in caps as its a constant
  PRACTICE_FORM_URL = 'https://www.toolsqa.com/automation-practice-form'
  FIRST_NAME_FIELD = 'firstname' 
  LAST_NAME_FIELD = 'lastname'
  DATE = 'datepicker'
  GENDER_RADIO = 'sex-0'
  EXPERIENCE_RADIO = 'exp-4'
  PROFESSION_CHECKBOX = 'profession-1'
  PROFILE_PICTURE = 'photo'

  # creating a driver using the chrome extension for google chrome
  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome 
  end

  def visit_practice_form
    @chrome_driver.get(PRACTICE_FORM_URL)
  end

  def input_firstname_field(text) 
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD).send_keys(text)
  end

  # this method gets the value of the element in the specified field e.g. firstname
  def input_firstname_field_value
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD).attribute('value')
  end

  # use this to access the current url
  def current_url
    @chrome_driver.current_url
  end

  def input_lastname_field(text) 
    @chrome_driver.find_element(:name, LAST_NAME_FIELD).send_keys(text)
  end

  def input_lastname_field_value 
    @chrome_driver.find_element(:name, LAST_NAME_FIELD).attribute('value')
  end

  def date_field(text)
    @chrome_driver.find_element(:id, DATE).send_keys(text)
  end

  def date_field_value
    @chrome_driver.find_element(:id, DATE).attribute('value')
  end

  def input_gender_radio_field
    @chrome_driver.find_element(:id, GENDER_RADIO).click
  end

  def input_gender_radio_field_value
    @chrome_driver.find_element(:id, GENDER_RADIO).attribute('value')
  end

  def input_exp_radio_field
    @chrome_driver.find_element(:id, EXPERIENCE_RADIO).click
  end

  def input_exp_radio_field_value
    @chrome_driver.find_element(:id, EXPERIENCE_RADIO).attribute('value')
  end

  def input_prof_checkbox_field
    @chrome_driver.find_element(:id, PROFESSION_CHECKBOX).click
  end

  def input_prof_checkbox_field_value
    @chrome_driver.find_element(:id, PROFESSION_CHECKBOX).attribute('value')
  end

  def input_profile_pic_field
    @chrome_driver.find_element(:id, PROFILE_PICTURE).click
  end

  def input_profile_pic_field_value
    @chrome_driver.find_element(:id, PROFILE_PICTURE).attribute('value')
  end

end

test = RegistrationForm.new
test.visit_practice_form
# test.input_firstname_field('Kirpal')
# test.input_lastname_field('Seehra')
# p test.input_firstname_field_value
# test.date_field('06/02/2019')
test.input_profile_pic_field
p test.input_profile_pic_field_value


# # sleep applies to the entire class
sleep 10