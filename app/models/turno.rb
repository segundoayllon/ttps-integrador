class Turno < ApplicationRecord
  belongs_to :user
  has_one    :sucursale

  enum :status, [:pendiente, :atendido, :cancelado]
end
