# This migration comes from picco_blog (originally 20160515182921)
if ActiveRecord.gem_version >= Gem::Version.new('5.0')
  class CreateFriendlyIdSlugs < ActiveRecord::Migration[4.2]; end
else
  class CreateFriendlyIdSlugs < ActiveRecord::Migration; end
end

CreateFriendlyIdSlugs.class_eval do
  def change
    create_table :friendly_id_slugs do |t|
      t.string   :slug,           :null => false
      t.integer  :sluggable_id,   :null => false
      t.string   :sluggable_type, :limit => 50
      t.string   :scope
      t.datetime :created_at
    end
    add_index :friendly_id_slugs, :sluggable_id
    add_index :friendly_id_slugs, [:slug, :sluggable_type]
    add_index :friendly_id_slugs, [:slug, :sluggable_type, :scope], :unique => true
    add_index :friendly_id_slugs, :sluggable_type
  end
end
