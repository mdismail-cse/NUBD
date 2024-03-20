class NubdSuggestion < ApplicationRecord
  # validates :free_pdf, blob: { content_type: %w[free_pdf/pdf]  }

  has_one_attached :free_pdf

  belongs_to :department
  belongs_to :subject

  def free_pdf_path
    ActiveStorage::Blob.service.path_for(free_pdf.key)
  end
end
