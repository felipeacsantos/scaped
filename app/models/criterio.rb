class Criterio < ApplicationRecord
  enum operador: [:AND, :OR, :XOR, :ONE]
  belongs_to :usuario
end
