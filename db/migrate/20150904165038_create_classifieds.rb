class CreateClassifieds < ActiveRecord::Migration
  def change
    create_table :classifieds do |t|
      t.string :title
      t.string :author
      t.text :body

      t.timestamps null: false
    end
  end
end
