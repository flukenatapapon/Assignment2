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
require 'rails_helper'

RSpec.describe Student, type: :model do
end
