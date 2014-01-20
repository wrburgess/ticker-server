class InitialMigration < ActiveRecord::Migration
  def change

    create_table "dashboards", force: true do |t|
      t.integer    "user_id"
      t.string     "title"
      t.timestamps
    end

    create_table "zones", force: true do |t|
      t.integer    "dashboard_id" 
      t.string     "title"
      t.timestamps
    end

    create_table "services", force: true do |t|
      t.string     "name"
      t.timestamps
    end

  end
end
