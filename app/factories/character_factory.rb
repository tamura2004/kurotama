class CharacterFactory
  include ActiveModel::Model

  def self.create_from_hash_name(hash_name,klass)
    if hash_attributes = JOBS[hash_name]
      klass.create do |character|
        hash_attributes.each do |key,value|
          character.send("#{key}=",value)
        end
      end
    end
  end
end

