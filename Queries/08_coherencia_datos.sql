-- Validacion de partidas por equipo
SELECT
    team,
    games_played,
    wins,
    loses,
    games_played - (wins + loses) AS diferencia
FROM teams  
WHERE games_played <> wins + loses ;

-- Estdisticas de judaores y sus equipos

SELECT player,
       team,
       position,
       games_played,
       winrate,
       kills,
       deaths,
       assists,
       kda
FROM players
WHERE team = 'Team Liquid'

SELECT player, team, kda
FROM players
WHERE games_played >= 10
ORDER BY kda DESC
LIMIT 10;

SELECT team,
       ROUND(AVG(kills), 1) AS kills_prom,
       ROUND(AVG(deaths), 1) AS muertes_prom,
       ROUND(AVG(assists), 1) AS asistencias_prom
FROM players
GROUP BY team
ORDER BY team ASC;

SELECT team, games_played, wins, loses,
       ROUND(100.0 * wins / games_played, 1) AS winrate_equipo
FROM teams
ORDER BY winrate_equipo DESC;

-- Metricas de Campeones 


SELECT champion, games_played, winrate, pick_rate, ban_rate
FROM champions
ORDER BY games_played DESC
LIMIT 10;


SELECT champion, ban_rate, pick_ban_rate
FROM champions
ORDER BY ban_rate DESC
LIMIT 10;


SELECT player, team, position, first_blood_rate
FROM players
WHERE games_played >= 10
ORDER BY first_blood_rate DESC
LIMIT 10;

SELECT
    champion,
    games_played,
    ROUND(100.0 * games_played / (SELECT SUM(games_played) / 2.0 FROM teams), 1) AS presencia_pick,
    ban_rate,
    pick_ban_rate,
    winrate
FROM champions
WHERE games_played > 0
ORDER BY pick_ban_rate DESC;

SELECT champion, ban_rate, pick_rate
FROM champions
WHERE ban_rate >= 20 AND pick_rate < 10;


SELECT COUNT(*) FROM champions WHERE games_played > 0;

-- Busqueda de valore poco razonables

SELECT champion FROM champions
WHERE pick_rate NOT BETWEEN 0 AND 100
   OR ban_rate NOT BETWEEN 0 AND 100
   OR winrate NOT BETWEEN 0 AND 100;


SELECT p.player, p.team, p.games_played, t.games_played AS partidas_equipo
FROM players p
JOIN teams t ON p.team = t.team
WHERE p.games_played > t.games_played;

SELECT player, kda,
       ROUND(1.0 * (kills + assists) / NULLIF(deaths, 0), 1) AS kda_calculado
FROM players
WHERE ABS(kda - 1.0 * (kills + assists) / NULLIF(deaths, 0)) > 0.15;


SELECT champion, games_played, pick_rate,
       ROUND(100.0 * games_played / (SELECT SUM(games_played) / 2.0 FROM teams), 1) AS pick_rate_calculado
FROM champions
WHERE ABS(pick_rate - 100.0 * games_played / (SELECT SUM(games_played) / 2.0 FROM teams)) > 1;