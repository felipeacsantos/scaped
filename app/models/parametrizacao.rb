class Parametrizacao < ApplicationRecord
  belongs_to :objeto
  belongs_to :parametro

  accepts_nested_attributes_for :parametro,
                                :reject_if => :all_blank
end
