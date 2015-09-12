class Sled < ActiveRecord::Base
  mount_uploader :file, AttachmentUploader
  has_many :sled_groups
end
