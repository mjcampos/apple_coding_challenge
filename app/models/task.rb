class Task < ApplicationRecord
  belongs_to :kind

  validates :name, presence: true

  # missing category here with: development, backlog, review, administrative
end
