copy players (
    player,
    team,
    position,
    games_played,
    winrate,
    counter_pickrate,
    kills,
    deaths,
    assists,
    kda,
    kill_participation,
    teams_kill_share,
    team_deaths_share,
    first_blood_rate,
    gold_diff_10,
    xp_diff_10,
    cs_diff_10,
    cspm,
    cs_post_15_share,
    damage_per_minute,
    damage_share,
    team_damage_post_15_share,
    turret_damage_per_game,
    average_gold_per_minute,
    gold_share,
    neutral_objectives_stolen,
    wards_per_minute,
    control_wards_per_minute,
    wards_cleared_per_minute
)
FROM 'C:\Users\manuo\Desktop\Data\LoL_MSI_2026\msi_26_players.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

-- Verificacion

SELECT COUNT(*) AS total_players
FROM players;