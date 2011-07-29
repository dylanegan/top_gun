require "top_gun/version"

module TopGun
  LYRICS_DIR = File.dirname(__FILE__) + '/../lyrics'

  def self.say(opts)
    commands = []

    if text = opts[:text]
      commands << text
    else
      commands << "-f #{File.join(LYRICS_DIR, opts[:file])}"
    end

    if voice = opts[:voice]
      commands << "-v #{voice}"
    end

    `say #{commands.join(' ')}`
  end

  def self.danger_zone
    say :file => 'danger_zone.txt'
  end

  def self.take_my_breath_away
    say :file => 'take_my_breath_away.txt', :voice => :victoria
  end

  def self.goose
    say :text => something_awesome(:goose), :voice  => :junior
  end

  def self.mav
    say :text => something_awesome(:mav), :voice  => :bruce
  end

  def self.something_awesome(by_who)
    case by_who
    when :mav
      ["eyell hit the breaks and he will fly right bye",
       "Too close for miss els, eyem switching to guns.",
       "Tower, this is Ghost Rider requesting a flybye",
       "You don’t have time to think up there. If you think, you’re dead."]
    when :goose
      ["Cum on Mav, do some of that pilot shit!",
       "No, mav, this is not a good idea",
       "You must have carnal knowledge of a lady this time, on the premises",
       "Yee ha!! Jesters dead!"]
    end.sort_by{ rand }.first

  end
end
