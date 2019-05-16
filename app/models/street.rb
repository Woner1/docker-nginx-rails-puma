class Street < ApplicationRecord
    belongs_to :province,class_name: "Street",foreign_key: :provincecode
end
