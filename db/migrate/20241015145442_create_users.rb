class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :username
      t.timestamps
    end
  end
end

class UsersController < ApplicationController
  def index
    @users = User
  end
end
