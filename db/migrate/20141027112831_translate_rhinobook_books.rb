class TranslateRhinobookBooks < ActiveRecord::Migration
	def self.up
		Rhinobook::Book.create_translation_table!({
			name: :string,
			descr: :text
		}, {
			migrate_data: true
		})
	end

	def self.down
		Rhinobook::Book.drop_translation_table! :migrate_data => true
	end
end
