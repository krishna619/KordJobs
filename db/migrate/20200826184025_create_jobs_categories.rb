class CreateJobsCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs_categories do |t|
      t.integer :location_id
      t.integer :job_id

      t.timestamps
    end
  end
end
