class City < ApplicationRecord
    belongs_to :province, class_name: "Province", foreign_key: "provincecode"
    validates :name,length: {maximum: 15}
end
