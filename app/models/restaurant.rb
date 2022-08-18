class Restaurant < ApplicationRecord
  # KEYS = %i[name address phone_number]
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, presence: true
  validates :category, presence: true, inclusion: {
    in: %w[Chinese Italian Japanese French Belgian],
    message: '%<value> is not a valid category'
  }
end
