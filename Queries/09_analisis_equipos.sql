Select team_id, team, games_played, wins, loses
from  teams
ORDER BY wins DESC
LIMIT 3;

-- Con esta consulta podemos ver que los tres equipos con mejores resultados son t1 hle blg, a pesar que t1 no jugo pasados cuartos de final, si gano todos sus partidos del play in dejandolo coomo el equipo con mas vicrtorias 

SELECT
    team,
    games_played,
    wins,
    loses,
    ROUND(100.0 * wins / NULLIF(games_played, 0), 1) AS winrate_equipo
FROM teams
ORDER BY winrate_equipo DESC;

-- Con esta consulta podemos ver que t1 es el equipo con mejor winrate, seguido por hle, los campeones y al mismo nivel que de Lyon, equipo que quedo eliminado en semifinales y blg, equipo subcampeon tambien con el mismo winrate. 

Select team_id, team, games_played, wins, loses
from  teams
ORDER BY wins ASC
LIMIT 3;

-- Con esta consulta podemos ver que los tres equipos con peores resultados son dcg furia y kc 

SELECT
    team,
    games_played,
    wins,
    loses,
    ROUND(100.0 * wins / NULLIF(games_played, 0), 1) AS winrate_equipo
FROM teams
ORDER BY winrate_equipo ASC;

-- Con esta consulta podemos ver que dcg y Furia comparten el mismo winrate de 0, seguikdo por tsw con 30% de winrate

--Como conclusion, podemos ver que si bien el equipo con mas victorias es t1 y a su vez el equipo con mejor winrate no es el campeon del torneo, si podemos observar que los equipos con peores resultados si fueron eliminados en la fase de grupos, mientras que los equipos con mejores resultados llegaron a las finales, aunque no necesariamente ganaron el torneo. Esto nos indica que el desempeño en victorias y winrate no siempre se traduce en campeonatos, pero si es un buen indicador del rendimiento general de los equipos.

-- Win rate contra oro y rendimiento por etapa

SELECT
    team,
    games_played,
    ROUND(100.0 * wins / NULLIF(games_played, 0), 1) AS winrate,
    gold_diff_15,
    CAST(REPLACE(gold_spent_difference, '%', '') AS DECIMAL(5,1)) AS gold_spent_diff_pct,
    gold_percent_rating,
    early_game_rating,
    mid_late_rating
FROM teams
ORDER BY winrate DESC;

/*
Liderazgo equilibrado vs. dominio temprano: T1 lidera con un 71.4% de winrate gracias a su consistencia general, mientras que HLE domina el early game (+1,399 de oro al min 15).

El oro temprano marca el ritmo: Todos los equipos con más del 64% de victorias (T1, HLE, LYON y BLG) mantienen ventajas de oro positivas y ratings de early game superiores a 50.

Remontadas en late game: LYON (64.7% winrate) demuestra que un buen juego tardío (mid_late_rating de 13.8) compensa ventajas tempranas modestas (+193 de oro).

Fondo de la tabla: FURIA y Deep Cross Gaming (0% winrate) arrastran déficits críticos de oro desde el inicio (hasta -2,572) sin capacidad de recuperación.
*/

--Win rate contra torres, barón y dragones

SELECT
    team,
    ROUND(100.0 * wins / NULLIF(games_played, 0), 1) AS winrate,
    CAST(REPLACE(first_tower_rate, '%', '') AS DECIMAL(5,1)) AS first_tower_pct,
    CAST(REPLACE(first_to_three_towers_rate, '%', '') AS DECIMAL(5,1)) AS first_3_towers_pct,
    turret_plates_destroyed,
    CAST(REPLACE(first_baron_rate, '%', '') AS DECIMAL(5,1)) AS first_baron_pct,
    CAST(REPLACE(baron_control_rate, '%', '') AS DECIMAL(5,1)) AS baron_control_pct,
    CAST(REPLACE(dragon_control_rate, '%', '') AS DECIMAL(5,1)) AS dragon_control_pct
FROM teams
ORDER BY winrate DESC;

/*
Control superior de objetivos: T1 y Hanwha Life lideran el control de Barón (63% y 61%) y la destrucción de placas de torres, respaldando sus altos winrates.

Efectividad en el primer Barón: Bilibili Gaming destaca asegurando el primer Barón en el 71% de las partidas, impulsando su tasa de victorias al 64.7%.

Presión temprana: LYON (76%) y Team Liquid (75%) priorizan fuertemente conseguir la primera torre del mapa.

Fondo de tabla: FURIA y Deep Cross Gaming sufren los valores más bajos en placas destruidas y control de Barón (25% a 38%), reflejando su 0% de victorias.
*/

