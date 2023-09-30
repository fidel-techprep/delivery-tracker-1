# == Schema Information
#
# Table name: deliveries
#
#  id          :integer          not null, primary key
#  description :string
#  details     :text
#  expected_by :date
#  received    :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
class Delivery < ApplicationRecord
  validates :description, presence: :true
  
  belongs_to :user
  scope :received, -> { where(received: true) }
end
