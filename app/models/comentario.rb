class Comentario < ActiveRecord::Base
  attr_accessible :corpo, :nick

  belongs_to :produto
  belongs_to :user
end
