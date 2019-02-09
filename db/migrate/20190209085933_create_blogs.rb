class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :description
      t.integer :published_status, null: false, default: 10
      t.date :publshed_on
      t.text :body
      t.references :user, index: true

      t.timestamps
    end
  end
end
