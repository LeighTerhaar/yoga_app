class SunA < ApplicationRecord
  # Direct associations

  has_many   :poses,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
