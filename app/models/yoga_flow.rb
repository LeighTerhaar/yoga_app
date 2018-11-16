class YogaFlow < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => :sequences_count

  # Indirect associations

  # Validations

end
