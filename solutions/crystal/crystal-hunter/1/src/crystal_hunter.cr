class Rules
  # Task 1: Bonus points if touching bandit with an active power-up
  def bonus_points?(power_up_active, touching_bandit)
    power_up_active && touching_bandit
  end

  # Task 2: Score if touching a power-up or a crystal
  def score?(touching_power_up, touching_crystal)
    touching_power_up || touching_crystal
  end

  # Task 3: Lose if touching bandit without an active power-up
  def lose?(power_up_active, touching_bandit)
    !power_up_active && touching_bandit
  end

  # Task 4: Win if all crystals are collected and not losing
  def win?(has_picked_up_all_crystals, power_up_active, touching_bandit)
    has_picked_up_all_crystals && (power_up_active || !touching_bandit)
  end
end
