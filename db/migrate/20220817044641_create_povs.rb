class CreatePovs < ActiveRecord::Migration[6.1]
  def change
    create_table :povs do |t|
      t.string :title
      t.string :author
      t.integer :publication_year

      t.timestamps
    end
  end
end
