class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.references :user, index: true
      t.string :status
      t.text :fromText
      t.text :toText
      t.integer :fromLanguage
      t.integer :toLanguage
      t.timestamp :completedAt
      t.string :status
      t.integer :translator

      t.timestamps
    end
add_index :translations,:translator
add_index :translations,[:fromLanguage,:toLanguage]
add_index :translations,:status



  end
end
