class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  validates :name, presence: true
  has_many :routes
  has_many :histories
  has_and_belongs_to_many :locations
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :image, :location, :gender
  attr_accessible :confirmation_token, :confirmed_at, :confirmation_sent_at, :unconfirmed_email

  validates_presence_of :password, on: :create
  validates_uniqueness_of :email
  
  # validates_format_of :username, with: /^[A-Za-z0-9]+$/i

  include Amistad::FriendModel
  mount_uploader :image, ImageUploader
end
