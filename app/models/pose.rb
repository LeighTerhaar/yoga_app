class Pose < ApplicationRecord
  # Direct associations

  belongs_to :flow,
             :required => false,
             :class_name => "YogaFlow",
             :foreign_key => "sequence_id",
             :counter_cache => true

  # Indirect associations

  # Validations

end
