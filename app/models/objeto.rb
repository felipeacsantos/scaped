class Objeto < ApplicationRecord
  has_many :parametrizacaos
  has_many :parametros,
           :through => :parametrizacaos

  accepts_nested_attributes_for :parametrizacaos,
           :reject_if => :all_blank,
           :allow_destroy => true
  accepts_nested_attributes_for :parametros
end
