class Department < ApplicationRecord
  has_many :subjects, dependent: :destroy

end
