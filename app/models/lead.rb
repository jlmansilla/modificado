class Lead < ApplicationRecord
  has_many :talks, dependent: :destroy
end
