class PcrInspection < ApplicationRecord
    validates :subject_id,  presence: true
    validates :clinic_id,  presence: true
    validates :result,  presence: true
end
