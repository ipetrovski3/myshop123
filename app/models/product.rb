class Product < ApplicationRecord
  belongs_to :article
  has_one_attached :main_image
end
