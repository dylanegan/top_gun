require "top_gun/version"

module TopGun
  LYRICS_DIR = File.dirname(__FILE__) + '/../lyrics'
  def self.danger_zone
    `say -f #{LYRICS_DIR}/danger_zone.txt`
  end

  def self.take_my_breath_away
    `say -v Victoria -f #{LYRICS_DIR}/take_my_breath_away.txt`
  end
end
