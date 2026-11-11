-- TABLA: TEAMS

CREATE TABLE teams (
    team_id SERIAL PRIMARY KEY,
    team VARCHAR(100) NOT NULL UNIQUE,
    
    games_played INTEGER,
    wins INTEGER,
    loses INTEGER,
    
    average_game_duration NUMERIC(10,2),
    
    kills INTEGER,
    deaths INTEGER,
    kd NUMERIC(10,2),
    
    combined_kills_per_minute NUMERIC(10,2),
    gold_percent_rating NUMERIC(10,2),
    
    gold_spent_difference VARCHAR(20),
    
    early_game_rating NUMERIC(10,2),
    mid_late_rating NUMERIC(10,2),
    
    gold_diff_15 INTEGER,
    
    first_blood_rate VARCHAR(10),
    first_tower_rate VARCHAR(10),
    first_to_three_towers_rate VARCHAR(10),
    
    turret_plates_destroyed NUMERIC(10,2),
    
    rift_herald_rate VARCHAR(10),
    grub_control_rate VARCHAR(10),
    first_dragon_rate VARCHAR(10),
    dragon_control_rate VARCHAR(10),
    elder_dragon_rate VARCHAR(10),
    first_baron_rate VARCHAR(10),
    baron_control_rate VARCHAR(10),
    
    lane_control VARCHAR(10),
    jungle_control VARCHAR(10),
    
    wards_per_minute NUMERIC(10,2),
    control_wards_per_minute NUMERIC(10,2),
    wards_cleared_per_minute NUMERIC(10,2)
);


-- TABLA: PLAYERS


CREATE TABLE players (
    player_id SERIAL PRIMARY KEY,
    
    player VARCHAR(100) NOT NULL,
    team VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    
    games_played INTEGER,
    
    winrate VARCHAR(10),
    counter_pickrate VARCHAR(10),
    
    kills INTEGER,
    deaths INTEGER,
    assists INTEGER,
    
    kda NUMERIC(10,2),
    
    kill_participation VARCHAR(10),
    teams_kill_share VARCHAR(10),
    team_deaths_share VARCHAR(10),
    first_blood_rate VARCHAR(10),
    
    gold_diff_10 INTEGER,
    xp_diff_10 INTEGER,
    cs_diff_10 NUMERIC(10,2),
    cspm NUMERIC(10,2),
    
    cs_post_15_share VARCHAR(10),
    
    damage_per_minute INTEGER,
    damage_share VARCHAR(10),
    team_damage_post_15_share VARCHAR(10),
    
    turret_damage_per_game INTEGER,
    average_gold_per_minute INTEGER,
    
    gold_share VARCHAR(10),
    
    neutral_objectives_stolen INTEGER,
    
    wards_per_minute NUMERIC(10,2),
    control_wards_per_minute NUMERIC(10,2),
    wards_cleared_per_minute NUMERIC(10,2)
);



-- TABLA: CHAMPIONS


CREATE TABLE champions (
    champion_id SERIAL PRIMARY KEY,
    
    champion VARCHAR(100) NOT NULL UNIQUE,
    
    games_played INTEGER,
    
    kills NUMERIC(10,2),
    deaths NUMERIC(10,2),
    assists NUMERIC(10,2),
    
    pick_rate NUMERIC(10,2),
    ban_rate NUMERIC(10,2),
    pick_ban_rate NUMERIC(10,2),
    
    winrate NUMERIC(10,2),
    counter_pickrate NUMERIC(10,2),
    
    kda NUMERIC(10,2),
    kill_participation NUMERIC(10,2),
    
    gold_diff_10 NUMERIC(10,2),
    xp_diff_10 NUMERIC(10,2),
    cs_diff_10 NUMERIC(10,2),
    
    cspm NUMERIC(10,2),
    
    damage_per_minute NUMERIC(10,2),
    damage_share NUMERIC(10,2),
    gold_share NUMERIC(10,2),
    
    wards_per_minute NUMERIC(10,2),
    wards_cleared_per_minute NUMERIC(10,2)
);