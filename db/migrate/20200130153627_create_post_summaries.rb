class CreatePostSummaries < ActiveRecord::Migration[5.2]
  def change
    create_table :post_summaries do |t|
      t.references :post, foreign_key: true
      t.integer :PostType
      t.text :abstractive
      t.text :extractive

      t.timestamps
    end
  end
end
