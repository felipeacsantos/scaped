class Criterio < ApplicationRecord
  enum operador: [:AND, :OR, :XOR, :ONE]
  belongs_to :usuario

  has_many :criterioestados, inverse_of: :criterio
  has_many :estados,
  		   :through => :criterioestados

  accepts_nested_attributes_for :criterioestados,
           :reject_if => :all_blank,
           :allow_destroy => true
  accepts_nested_attributes_for :estados
end
