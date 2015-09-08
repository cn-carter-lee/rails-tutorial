class CreateMemberGroups < ActiveRecord::Migration
  def change
    create_table :member_groups do |t|
      t.integer :memberid
      t.integer :groupid
    end
  end
end
