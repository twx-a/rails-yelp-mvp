class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, presence: true, if: :include_in_category?

  def include_in_category?
    %w[chinese italian japanese french belgian].include? category
  end
end
