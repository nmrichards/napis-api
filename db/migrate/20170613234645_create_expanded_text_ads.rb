class CreateExpandedTextAds < ActiveRecord::Migration[5.0]
  def change
    create_table :expanded_text_ads do |t|
      t.string :xsi_type
      t.string :headline_part1
      t.string :headline_part2
      t.string :description
      t.string :path1
      t.string :path2
      t.references :ad_group, foreign_key: true

      t.timestamps
    end
  end
end
