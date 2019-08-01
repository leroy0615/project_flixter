class AddImageToCourses < ActiveRecord::Migration[5.2]
  def change
    change_column :courses, :image, :string
  end
end
