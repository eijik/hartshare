class Sled < ActiveRecord::Base
  mount_uploader :file, AttachmentUploader
end
