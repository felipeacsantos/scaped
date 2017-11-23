class Esvalparam < ApplicationRecord
  belongs_to :esparam
  belongs_to :usuario

  has_many :estadoesvalparams
  has_many :estados, through: :estadoesvalparams
end
