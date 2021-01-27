class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :lastname
      t.integer :age
      t.string :phone

      t.timestamps
    end
  end
end
