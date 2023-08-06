class CreateVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :variants, id: :uuid do |t|
      t.string :name
      t.string :value
      t.string :type
      t.belongs_to :product_category, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
