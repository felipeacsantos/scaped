class Valparametro < ApplicationRecord
  belongs_to :parametro

  has_many :objetovalparametros
  has_many :objetos, through: :objetovalparametros
end
