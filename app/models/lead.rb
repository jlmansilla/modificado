class Lead < ApplicationRecord
  enum status: [:prospecto, :interesado, :cliente]
  has_many :talks, dependent: :destroy
end
