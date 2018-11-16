class Pose < ApplicationRecord
  # Direct associations

  belongs_to :sun_a,
             :required => false,
             :counter_cache => true

  belongs_to :flow,
             :required => false,
             :class_name => "YogaFlow",
             :foreign_key => "sequence_id",
             :counter_cache => true

  # Indirect associations

  # Validations

end
