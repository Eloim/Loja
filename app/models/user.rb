class User < ActiveRecord::Base
  attr_accessible :email, :endereco, :nome, :senha

  validates :nome, :presence => true, :uniqueness => true
  validates :endereco, :presence => true
  validates :email, :presence => true
  validates :senha, :presence => true

  has_many :carrinhos
  has_many :comentarios
end
