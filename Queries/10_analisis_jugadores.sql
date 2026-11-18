-- Juegos jugados y winrate por posicion

SELECT player,
       team,
       position,
       games_played,
       winrate 
FROM players
WHERE position = 'Top'
ORDER BY winrate DESC

SELECT player,
       team,
       position,
       games_played,
       winrate 
FROM players
WHERE position = 'Jungle'
ORDER BY winrate DESC

SELECT player,
       team,
       position,
       games_played,
       winrate 
FROM players
WHERE position = 'Middle'
ORDER BY winrate DESC

SELECT player,
       team,
       position,
       games_played,
       winrate 
FROM players
WHERE position = 'ADC'
ORDER BY winrate DESC

SELECT player,
       team,
       position,
       games_played,
       winrate 
FROM players
WHERE position = 'Support'
ORDER BY winrate DESC

-- Experiencia, oro y objetivos vs. Win Rate

SELECT player,
       team,
       position,
       winrate,
       gold_diff_10,
       xp_diff_10,
       cs_diff_10
FROM players 
WHERE position = 'Top'
ORDER BY winrate DESC;

SELECT player,
       team,
       position,
       winrate,
       gold_diff_10,
       xp_diff_10,
       cs_diff_10
FROM players 
WHERE position = 'Jungle'
ORDER BY winrate DESC;


SELECT player,
       team,
       position,
       winrate,
       gold_diff_10,
       xp_diff_10,
       cs_diff_10
FROM players 
WHERE position = 'Middle'
ORDER BY winrate DESC;


SELECT player,
       team,
       position,
       winrate,
       gold_diff_10,
       xp_diff_10,
       cs_diff_10
FROM players 
WHERE position = 'ADC'
ORDER BY winrate DESC;


SELECT player,
       team,
       position,
       winrate,
       gold_diff_10,
       xp_diff_10,
       cs_diff_10
FROM players 
WHERE position = 'Support'
ORDER BY winrate DESC;


-- Counterpick vs. Win Rate

SELECT player,
       team,
       position,
       winrate,
       counter_pickrate
FROM players 
WHERE position = 'Top'
ORDER BY winrate DESC;

SELECT player,
       team,
       position,
       winrate,
       counter_pickrate
FROM players 
WHERE position = 'Jungle'
ORDER BY winrate DESC;

SELECT player,
       team,
       position,
       winrate,
       counter_pickrate
FROM players 
WHERE position = 'Middle'
ORDER BY winrate DESC;

SELECT player,
       team,
       position,
       winrate,
       counter_pickrate
FROM players 
WHERE position = 'ADC'
ORDER BY winrate DESC;

SELECT player,
       team,
       position,
       winrate,
       counter_pickrate
FROM players 
WHERE position = 'Support'
ORDER BY winrate DESC;


-- KDA vs. daño infligido

SELECT player,
       team,
       position, 
       kda,
       damage_per_minute 
FROM players
WHERE position = 'Top'
ORDER BY kda DESC;

SELECT player,
       team,
       position, 
       kda,
       damage_per_minute 
FROM players
WHERE position = 'Jungle'
ORDER BY kda DESC;

SELECT player,
       team,
       position, 
       kda,
       damage_per_minute 
FROM players
WHERE position = 'Middle'
ORDER BY kda DESC;

SELECT player,
       team,
       position, 
       kda,
       damage_per_minute 
FROM players
WHERE position = 'ADC'
ORDER BY kda DESC;

SELECT player,
       team,
       position, 
       kda,
       damage_per_minute 
FROM players
WHERE position = 'Support'
ORDER BY kda DESC;

