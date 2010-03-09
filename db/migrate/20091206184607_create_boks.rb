class CreateBoks < ActiveRecord::Migration
  def self.up
    create_table :boks do |t|
      t.references :project
      t.references :parent
      t.references :user
      t.integer :position

      t.string :title
      t.string :description
      t.string :bok_type
      t.string :content_type
      t.string :properties, :length => 4096
      t.text :body

      t.string :media_file_name
      t.string :media_content_type
      t.integer :media_file_size
      t.datetime :media_updated_at
      t.timestamps
    end

    add_index :boks, :bok_type
    add_index :boks, :title
    add_index :boks, :content_type

  end

  def self.down
    drop_table :boks
  end
end
