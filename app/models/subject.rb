class Subject < ApplicationRecord
    validates :name,  presence: true
    validates :gender,  presence: true
    validates :birthday,  presence: true
    validates :address,  presence: true
end
