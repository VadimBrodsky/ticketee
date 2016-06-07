class Project < ActiveRecord::Base
  validates :name, presence: true

  has_many :tickets, dependent: :delete_all
  # dependent: :delete - iterates through all, call callbacks
  # dependent: :delete_all - destroys all in one SQL statement
  # dependent: :nullify - removes the association
  # dependent: :restrict_with_error - add validation error
  # dependent: :restrict_with_exception - raise an exception
end
