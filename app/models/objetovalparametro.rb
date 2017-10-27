class Objetovalparametro < ApplicationRecord
  belongs_to :objeto, inverse_of: :objetovalparametros
  belongs_to :valparametro, inverse_of: :objetovalparametros

  accepts_nested_attributes_for :valparametro,
                                :reject_if => :all_blank
end
