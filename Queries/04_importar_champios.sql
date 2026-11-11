copy champions (
    champion,
    games_played,
    kills,
    deaths,
    assists,
    pick_rate,
    ban_rate,
    pick_ban_rate,
    winrate,
    counter_pickrate,
    kda,
    kill_participation,
    gold_diff_10,
    xp_diff_10,
    cs_diff_10,
    cspm,
    damage_per_minute,
    damage_share,
    gold_share,
    wards_per_minute,
    wards_cleared_per_minute
)
FROM 'C:\Users\manuo\Desktop\Data\LoL_MSI_2026\msi_26_champions.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

-- Verificacion 

SELECT COUNT(*) AS total_champions
FROM champions;