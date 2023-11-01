class AddUsernamePositionStatusAndLastLoginAtToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :username, :string
    add_column :users, :position, :string
    add_column :users, :status, :string, default: "active"
    add_column :users, :last_login_at, :datetime
  end
end
