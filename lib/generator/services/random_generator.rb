require 'faker'

class RandomFormData

  def first_name
    Faker::Name.first_name
  end

  def last_name
    Faker::Name.last_name
  end

end