# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Post < ApplicationRecord
    # Ex:- scope :active, -> {where(:active => true)}
    validates :title, presence: true
    validates :description, presence: true
end
