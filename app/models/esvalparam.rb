class Esvalparam < ApplicationRecord
  belongs_to :esparam

  has_many :estadoesvalparams
  has_many :estados, through: :estadoesvalparams
end
