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
require 'rails_helper'

RSpec.describe Post, type: :model do
  context "validation tests" do
    it "ensures title presence" do
      post = Post.new(description: 'scription').save
      expect(post).to eq(false)  
    end

    it "ensures description presence" do
      post = Post.new(title: 'title').save
      expect(post).to eq(false)  
    end

    it "should save successfully" do
      post = Post.new(title: 'first', description: 'testScript').save
      expect(post).to eq(true)  
    end
  end
end