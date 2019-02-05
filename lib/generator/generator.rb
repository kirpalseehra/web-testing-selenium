require_relative './services/random_generator'

class Generator

  def registration_form_data
    RandomFormData.new
  end

end