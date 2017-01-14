class Resume < ApplicationRecord
  belongs_to :users
  belongs_to :job

  mount_uploader :attachment, AttachmentUploader

  validates :content, presence: true
end
