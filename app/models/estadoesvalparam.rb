class Estadoesvalparam < ApplicationRecord
  belongs_to :estado, inverse_of: :estadoesvalparams
  belongs_to :esvalparam, inverse_of: :estadoesvalparams

  accepts_nested_attributes_for :esvalparam,
                                :reject_if => :all_blank
end
