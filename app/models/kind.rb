class Kind < ApplicationRecord
  def self.min_size
    20
  end

  def color; "blue"; end

  validates :name, length: { minimum: 5 }, presence: true, uniqueness: true
  validates :size, numericality: { greater_than_or_equal_to: min_size }
end
