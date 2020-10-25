class Task < ApplicationRecord
  belongs_to :board
  validates :title, presence: {message: "O nome da tarefa deve ser informado"}
  validate :deadlineInFuture

  private
  def deadlineInFuture
    # FIXME: if the deadline is incorrectly formatted, it will be considered as "no deadline"
    if !deadline.nil? && deadline <= Date.today
      errors.add(:deadline, "A data informada é inválida")
      return false
    end
    return true
  end
end
