class CreateSanskritTerms < ActiveRecord::Migration[5.1]
  def change
    create_table :sanskrit_terms do |t|
      t.string :term
      t.text :definition

      t.timestamps
    end
  end
end
