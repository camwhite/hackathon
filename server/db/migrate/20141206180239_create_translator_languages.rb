class CreateTranslatorLanguages < ActiveRecord::Migration
  def change
    create_table :translator_languages do |t|
      t.references :User, index: true
      t.references :Language, index: true

      t.timestamps
    end
  end
end
