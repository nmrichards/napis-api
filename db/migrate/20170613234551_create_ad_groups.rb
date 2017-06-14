class CreateAdGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :ad_groups do |t|
      t.string :name
      t.string :status
      t.references :campaign, foreign_key: true

      t.timestamps
    end
  end
end
