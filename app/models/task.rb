class Task < ApplicationRecord
  validates :titulo, presence: {message: "O nome da tarefa deve ser informado"}
  validate :deadlineInFuture

  private
  def deadlineInFuture
    if deadline != nil && deadline <= Date.today
      errors.add(:data, "A data informada é inválida")
      return false
    end
    return true
  end
end
