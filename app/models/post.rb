class Post < ActiveRecord::Base
#  before_create :owner
  belongs_to :user
#  def owner
#      self.user_id = current_user.id
#  end
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
            length: { minimum: 5 }
end
