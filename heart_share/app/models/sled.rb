class Sled < ActiveRecord::Base
  mount_uploader :file, AttachmentUploader
  has_many :sled_groups
  belongs_to :creator, class_name:'User', foreign_key: :creator_id
end
