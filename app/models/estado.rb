class Estado < ApplicationRecord
  has_many :estadoesvalparams, inverse_of: :estado
  has_many :esvalparams,
           :through => :estadoesvalparams

  accepts_nested_attributes_for :estadoesvalparams,
           :reject_if => :all_blank,
           :allow_destroy => true
  accepts_nested_attributes_for :esvalparams
end
