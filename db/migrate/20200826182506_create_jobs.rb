class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :location
      t.string :job_type

      t.timestamps
    end
  end
end
