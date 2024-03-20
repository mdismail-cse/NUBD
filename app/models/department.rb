class Department < ApplicationRecord
  has_many :subjects, dependent: :destroy
  has_many :nubd_suggestions
end
