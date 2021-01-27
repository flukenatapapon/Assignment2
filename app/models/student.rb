# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  age        :integer
#  first_name :string
#  lastname   :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Student < ApplicationRecord
    validates :age, presence: true , numericality: { only_integer: true }
    validates :first_name, presence: true
    validates :lastname, presence: true
    validates :phone, presence: true
end
