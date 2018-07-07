class Kind < ApplicationRecord
  def min_size
    20
  end

  def color; "blue"; end

  validates :name, presence: true, uniqueness: true
end
