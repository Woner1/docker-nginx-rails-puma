class City < ApplicationRecord
    belongs_to :province,class_name: "City", foreign_key: "provincecode"
    # has_many :areas,:class_name => "Area", foreign_key: :citycode
    validates :name,length: {maximum: 15}
end
