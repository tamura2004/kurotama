class PcFactory
  include ActiveModel::Model

  attr_accessor :name

  def self.create_from_job_name(job_name)

    if job_attributes = JOBS[job_name]
      pc = Pc.create do |pc|
        job_attributes.each do |key,value|
          pc.send("#{key}=",value)
        end
      end
    end
  end
end

  # ability: [14,9,18,6,14,15]
  # level: 1

  # weapon: 折れた直剣
  # shield: 戦士の円盾
  # armor: 騎士の鎧
  # spell: なし
  # ring: なし