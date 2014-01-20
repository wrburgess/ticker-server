class InitialMigration < ActiveRecord::Migration
  def change

    create_table "dashboards", force: true do |t|
      t.string     "name"
      t.timestamps
    end

  end
end
