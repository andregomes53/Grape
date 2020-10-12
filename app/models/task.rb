class Task < ApplicationRecord
  validates :title, presence: {message: "O nome da tarefa deve ser informado"}
  validate :deadlineInFuture

  private
  def deadlineInFuture
    if deadline != nil && deadline <= Date.today
      errors.add(:deadline, "A data informada é inválida")
      return false
    end
    return true
  end
end
