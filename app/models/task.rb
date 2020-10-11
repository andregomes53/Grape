class Task < ApplicationRecord
  validates :titulo, presence: {message: "O nome da tarefa deve ser informado"}

end
