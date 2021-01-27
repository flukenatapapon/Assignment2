require 'rails_helper'

RSpec.describe "students/show", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      first_name: "First Name",
      lastname: "Lastname",
      age: 2,
      phone: "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Lastname/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Phone/)
  end
end
