class User < ActiveRecord::Base
  mount_uploader :image, AttachmentUploader
  belongs_to :group_id
end
