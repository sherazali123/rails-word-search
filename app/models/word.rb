class Word < ActiveRecord::Base

  validates :title, presence: true, length: { minimum: 1 }
  validates :description, presence: false

  validate :validate_active

  # Tells rails to use this uploader for this model.
  mount_uploader :attachment, AttachmentUploader

  # validate if which one required other should be blank
  def validate_active
    errors.add(:active, "must be one.") if :active.blank?
  end

  # default_scope {where(active: true)}
  scope :status_active, -> {where(active: true)}

  scope :search, -> (q) { where("title like ?", "#{q}%")}

end