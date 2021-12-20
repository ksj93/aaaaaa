class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum status:{会社員:0, 主婦:1, フリーター:2, 高校生:3, 無職:4, 大学生:5, 外国人:6}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :profile, length: {  minimum: 1, maximum: 100 }
end
