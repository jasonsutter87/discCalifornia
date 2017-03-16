class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :hole_count
      t.string :course_condition
      t.string :hole_type
      t.string :tee_type
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
