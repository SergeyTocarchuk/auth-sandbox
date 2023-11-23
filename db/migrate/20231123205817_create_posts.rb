class CreatePosts < ActiveRecord::Migration[7.1]

  def change
    create_table :posts, &:timestamps
  end

end
