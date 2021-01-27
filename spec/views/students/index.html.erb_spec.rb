require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        first_name: "First Name",
        lastname: "Lastname",
        age: 2,
        phone: "Phone"
      ),
      Student.create!(
        first_name: "First Name",
        lastname: "Lastname",
        age: 2,
        phone: "Phone"
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Lastname".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Phone".to_s, count: 2
  end
end
