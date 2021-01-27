require 'rails_helper'

RSpec.describe "students/edit", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      first_name: "MyString",
      lastname: "MyString",
      age: 1,
      phone: "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do

      assert_select "input[name=?]", "student[first_name]"

      assert_select "input[name=?]", "student[lastname]"

      assert_select "input[name=?]", "student[age]"

      assert_select "input[name=?]", "student[phone]"
    end
  end
end
