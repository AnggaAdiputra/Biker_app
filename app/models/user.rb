class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true
  has_many :routes
  has_and_belongs_to_many :locations
  attr_accessible :name, :email, :password

  validates_presence_of :password, on: :create
  validates_uniqueness_of :email, :username
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a+z]{2,})\z/i
  validates_format_of :username, with: /^[A-Za-z0-9]+$/i
end
