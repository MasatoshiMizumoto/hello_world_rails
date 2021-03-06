# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_15_174604) do

  create_table 'articles', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb3', force: :cascade do |t|
    t.string 'title'
    t.string 'body'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'user_id'
    t.index ['user_id'], name: 'index_articles_on_user_id'
  end

  create_table 'communities', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb3', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'user_communities', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb3', force: :cascade do |t|
    t.bigint 'user_id'
    t.bigint 'community_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['community_id'], name: 'index_user_communities_on_community_id'
    t.index ['user_id'], name: 'index_user_communities_on_user_id'
  end

  create_table 'user_details', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb3', force: :cascade do |t|
    t.string 'postal_code'
    t.string 'address'
    t.datetime 'birthday'
    t.bigint 'user_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_user_details_on_user_id'
  end

  create_table 'users', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb3', force: :cascade do |t|
    t.string 'account'
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'email'
  end

  add_foreign_key 'articles', 'users'
  add_foreign_key 'user_communities', 'communities'
  add_foreign_key 'user_communities', 'users'
  add_foreign_key 'user_details', 'users'
end
