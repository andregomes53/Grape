class Board < ApplicationRecord
  validates :name, presence: {message: "Preencha o nome do quadro"}
end
