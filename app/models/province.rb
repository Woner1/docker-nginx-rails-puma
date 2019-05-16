class Province < ApplicationRecord
    has_many :cities
    validates :name,length: {maximum: 10}
end
