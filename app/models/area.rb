class Area < ApplicationRecord
    belongs_to :province,class_name: "Area",foreign_key: "provincecode"
    belongs_to :city,:class_name => "City", foreign_key: "citycode"
end
