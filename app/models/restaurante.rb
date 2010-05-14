class Restaurante < ActiveRecord::Base
  
  has_many :qualificacoes
  has_and_belongs_to_many :pratos

has_many :comentarios, :as => :comentavel

  #validation helpers
  validates_presence_of :nome, :message => "nome nao existe"
  validates_uniqueness_of :nome
  validate :valida_algo_especifico
  
  private
  def valida_algo_especifico #validador proprio
      errors.add(:nome, "primeira maiuscula") unless nome =~ /[A-Z].*/
  end
end
