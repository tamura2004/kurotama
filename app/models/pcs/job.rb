class Pcs::Job
  include ActiveModel::Model
  attr_accessor :name

  def self.all
    JOBS.keys.map do |name|
      Pcs::Job.new(name: name)
    end
  end

  def path
    [self, pcs_job: {name: name}]
  end

end
