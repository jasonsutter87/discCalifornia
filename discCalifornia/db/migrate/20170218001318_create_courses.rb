class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :hole_count
      t.integer :course_condition
      t.integer :hole_type
      t.integer :tee_type
      t.string :lat
      t.string :long
      t.string :pay
      t.string :private
      t.integer :ave_score
      t.string :played
      t.text :comments
      t.timestamps
    end
  end
end
