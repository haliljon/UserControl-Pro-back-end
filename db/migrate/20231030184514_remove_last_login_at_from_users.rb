class RemoveLastLoginAtFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :last_login_at, :datetime
  end
end
