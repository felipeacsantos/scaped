class Valparametro < ApplicationRecord
  belongs_to :parametro
  belongs_to :usuario

  has_many :objetovalparametros
  has_many :objetos, through: :objetovalparametros
end
