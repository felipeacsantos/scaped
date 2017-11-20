class Esparam < ApplicationRecord
  belongs_to :tipoestado

  has_many :esvalparams
end
