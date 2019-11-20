class CreateContactModels < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_models do |t|
      t.string :name
      t.string :telefone

      t.timestamps
    end
  end
end
