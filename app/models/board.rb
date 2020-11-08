class Board < ApplicationRecord
  validates :name, presence: {message: "Preencha o nome do quadro"}
  has_many :task
end
