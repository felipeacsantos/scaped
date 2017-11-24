class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :testes
  has_many :testedefinicaos
  has_many :criterios
  has_many :estados
  has_many :esvalparams
  has_many :objetos
  has_many :valparametros
end
