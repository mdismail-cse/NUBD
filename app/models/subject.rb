class Subject < ApplicationRecord
  belongs_to :department
  has_many :nubd_suggestions
end
