require 'rails_helper'

RSpec.describe "students/new", type: :view do
  before(:each) do
    assign(:student, Student.new(
      first_name: "MyString",
      lastname: "MyString",
      age: 1,
      phone: "MyString"
    ))
  end

  it "renders new student form" do
    render

    assert_select "form[action=?][method=?]", students_path, "post" do

      assert_select "input[name=?]", "student[first_name]"

      assert_select "input[name=?]", "student[lastname]"

      assert_select "input[name=?]", "student[age]"

      assert_select "input[name=?]", "student[phone]"
    end
  end
end
