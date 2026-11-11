copy teams (
    team,
    games_played,
    wins,
    loses,
    average_game_duration,
    kills,
    deaths,
    kd,
    combined_kills_per_minute,
    gold_percent_rating,
    gold_spent_difference,
    early_game_rating,
    mid_late_rating,
    gold_diff_15,
    first_blood_rate,
    first_tower_rate,
    first_to_three_towers_rate,
    turret_plates_destroyed,
    rift_herald_rate,
    grub_control_rate,
    first_dragon_rate,
    dragon_control_rate,
    elder_dragon_rate,
    first_baron_rate,
    baron_control_rate,
    lane_control,
    jungle_control,
    wards_per_minute,
    control_wards_per_minute,
    wards_cleared_per_minute
)
FROM 'C:\Users\manuo\Desktop\Data\LoL_MSI_2026\msi_26_teams.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

-- Verificacion

SELECT COUNT(*) AS total_team
FROM teams