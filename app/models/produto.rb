class Produto < ActiveRecord::Base
  attr_accessible :pdescri, :pimg, :pnome, :pvalor

  validates :pnome, :presence => true, :uniqueness => true
  validates :pimg, :presence => true, :uniqueness => true
  validates :pvalor, :presence => true
  validates :pdescri, :presence => true

  has_many :carrinhos
  has_many :comentarios, :dependent => :destroy
end
