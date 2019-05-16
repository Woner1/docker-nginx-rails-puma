class Province < ApplicationRecord
    has_many :cities,class_name: "City",foreign_key: "provincecode"
    has_many :areas,class_name: "Area",foreign_key: "provincecode"
    has_many :streets,class_name: "Street",foreign_key: "provincecode"
    validates :name,length: {maximum: 10}
end
