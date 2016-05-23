class MobFactory < CharacterFactory
  def self.create_from_mob_name(mob_name)
    create_from_hash_name(mob_name,Mob)
  end
end

