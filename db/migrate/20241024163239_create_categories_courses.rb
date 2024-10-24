class CreateCategoriesCourses < ActiveRecord::Migration[7.2]
  def change
    create_table :categories_courses do |t|
      t.references :category, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
