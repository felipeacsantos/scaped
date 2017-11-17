class Criterio < ApplicationRecord
  enum operador: [:AND, :OR, :XOR, :ONE]
end
