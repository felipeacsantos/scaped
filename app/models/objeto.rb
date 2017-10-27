class Objeto < ApplicationRecord
  has_many :parametrizacaos
  has_many :parametros,
           :through => :parametrizacaos

  accepts_nested_attributes_for :parametrizacaos,
           :reject_if => :all_blank,
           :allow_destroy => true
  accepts_nested_attributes_for :parametros

  has_many :objetovalparametros, inverse_of: :objeto
  has_many :valparametros,
           :through => :objetovalparametros

  accepts_nested_attributes_for :objetovalparametros,
           :reject_if => :all_blank,
           :allow_destroy => true
  accepts_nested_attributes_for :valparametros

end
