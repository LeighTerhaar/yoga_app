class YogaFlow < ApplicationRecord
  # Direct associations

  has_many   :poses,
             :foreign_key => "sequence_id",
             :dependent => :nullify

  belongs_to :user,
             :counter_cache => :sequences_count

  # Indirect associations

  # Validations

end
