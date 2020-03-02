class Post < ApplicationRecord
    validates :user_id, presence: true
    validates :title, presence: true
    validates :description, presence: true
    validates :image, presence: true

    belongs_to :user

    mount_uploader :image, ImageUploader

    def delete_with_image
        self.destroy
        Dir.rmdir("#{Rails.root.to_s}/public/uploads/post/image/#{self.id}")
    end
end
