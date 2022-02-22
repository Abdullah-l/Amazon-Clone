class Item < ApplicationRecord
    has_multiple_attached :uploads
end
