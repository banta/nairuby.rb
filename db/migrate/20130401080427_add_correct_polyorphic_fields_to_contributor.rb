class AddCorrectPolyorphicFieldsToContributor < ActiveRecord::Migration
  def change
    remove_index :contributors, :contributor_type
    remove_index :contributors, :contributor_id

    rename_column :contributors, :contributor_id, :contributable_id
    rename_column :contributors, :contributor_type, :contributable_type
    
    add_index :contributors, :contributable_type
    add_index :contributors, :contributable_id
  end
end
