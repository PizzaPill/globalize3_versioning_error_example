class CreateGlobalizeTests < ActiveRecord::Migration
  def up
    create_table :globalize_tests do |t|
      t.string :title
      t.text :description
      t.timestamps
    end
    GlobalizeTest.create_translation_table! :title => :string, :description => :text
  end
  def down
    drop_table :globalize_tests
    GlobalizeTest.drop_translation_table!
  end
end
