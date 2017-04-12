class RenameResumeUserId < ActiveRecord::Migration[5.0]
  def change
    rename_column :resumes, :user_is, :user_id
  end
end
