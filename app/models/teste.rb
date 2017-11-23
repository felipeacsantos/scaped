class Teste < ApplicationRecord
  enum checkvalor: [:ALL, :AT_LEAST_ONE, :NONE_SATISFY, :ONLY_ONE]
  enum checkexists: [:ALL_EXIST, :AT_LEAST_ONE_EXISTS, :ANY_EXIST, :NONE_EXIST, :ONLY_ONE_EXISTS]

  belongs_to :objeto
  belongs_to :criterio
  belongs_to :usuario
end
