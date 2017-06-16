class Entity < ActiveRecord::Base
  #serialize :config, JSON
  def has_config
    self.has_attribute? 'config'
  end

  def has_water
    self[:config]["features"]["utilities"]["water"] == true
  end

  def has_gas
    self[:config]["features"]["utilities"]["gas"] == true
  end

  def has_electric
    self[:config]["features"]["utilities"]["electric"] == true
  end
end
