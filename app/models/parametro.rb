class Parametro < ApplicationRecord
  has_many :parametrizacaos
  has_many :objetos, through: :parametrizacaos

  has_many :valparametros
end
