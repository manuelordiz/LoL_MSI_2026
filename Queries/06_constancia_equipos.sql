-- Query teams, players

SELECT teams.team_id,
       teams.team,
       players.player_id,
       players.player
FROM teams
LEFT JOIN players ON teams.team = players.team
ORDER BY teams.team_id, players.player_id DESC

--General

SELECT *
FROM teams
LEFT JOIN players ON teams.team = players.team
ORDER BY teams.team_id, players.player_id DESC

/*
Validación de consistencia entre tablas: Se verificó la correspondencia entre los nombres de los equipos registrados en las tablas teams y players. Los 11 equipos cuentan con jugadores asociados, con un total de 55 registros y cinco jugadores por equipo. No se identificaron inconsistencias que afecten actualmente la relación entre ambas tablas.
*/
