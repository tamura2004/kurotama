class PcFactory < CharacterFactory
  def self.create_from_job_name(job_name)
    create_from_hash_name(job_name,Pc)
  end
end

