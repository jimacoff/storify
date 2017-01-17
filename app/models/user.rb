# == Schema Information
#
# Table name: users
#
#  id           :integer          not null, primary key
#  email        :string
#  phone_number :string
#  first_name   :string
#  last_name    :string
#  gender       :string
#  avatar       :string
#  metadata     :jsonb
#  type         :string
#  status       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
