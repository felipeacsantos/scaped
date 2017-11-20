class Estadoesvalparam < ApplicationRecord
  belongs_to :estado, inverse_of: :estadoesvalparam
  belongs_to :esvalparam, inverse_of: :estadoesvalparam

  accepts_nested_attributes_for :esvalparam,
                                :reject_if => :all_blank
end
