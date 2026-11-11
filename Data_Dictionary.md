# MSI 2026 Dataset - Data Dictionary

## msi_26_teams.csv

| Column | Description |
|----------|----------|
| team | Team name |
| games_played | Total number of games played |
| wins | Total wins |
| loses | Total losses |
| average_game_duration | Average game duration in minutes |
| kills | Total team kills |
| deaths | Total team deaths |
| kd | Kill-to-death ratio |
| combined_kills_per_minute | Combined kills per minute by both teams |
| gold_percent_rating | Average amount of game's total gold, relative to 50% |
| gold_spent_difference | Average gold spent percentage difference |
| early_game_rating | Composite metric measuring early game rating |
| mid_late_rating | Composite metric measuring mid and late game rating |
| gold_diff_15 | Average gold difference at 15 minutes |
| first_blood_rate | Percentage of games securing First Blood |
| first_tower_rate | Percentage of games securing the first tower |
| first_to_three_towers_rate | Percentage of games reaching three towers before opponents |
| turret_plates_destroyed | Turret plates destroyed |
| rift_herald_rate | Percentage of Rift Heralds secured |
| grub_control_rate | Percentage of Void Grubs secured |
| first_dragon_rate | Percentage of games securing the first dragon |
| dragon_control_rate | Percentage of elemental dragons secured (excludes Elder) |
| elder_dragon_rate | Percentage of Elder Dragons secured |
| first_baron_rate | Percentage of games securing the first Baron Nashor |
| baron_control_rate | Percentage of Barons secured |
| lane_control | Average share of game's total lane's cs |
| jungle_control | Average share of game's jungle's total cs |
| wards_per_minute | Wards placed per minute |
| control_wards_per_minute | Control wards placed per minute |
| wards_cleared_per_minute | Enemy wards cleared per minute |

---

## msi_26_players.csv

| Column | Description |
|----------|----------|
| player | Player name |
| team | Team name |
| position | Role played (Top, Jungle, Middle, ADC, Support) |
| games_played | Total games played |
| winrate | Match win percentage |
| counter_pickrate | Percentage of games played as a counter-pick |
| kills | Total kills |
| deaths | Total deaths |
| assists | Total assists |
| kda | Kill/Death/Assist ratio |
| kill_participation | Percentage of team kills a player participated in a kill or assist |
| teams_kill_share | Player's share of team's kills |
| team_deaths_share | Player's share of team's deaths |
| first_blood_rate | Percentage of games securing First Blood kill or assist |
| gold_diff_10 | Average gold difference at 10 minutes |
| xp_diff_10 | Average experience difference at 10 minutes |
| cs_diff_10 | Average creep score difference at 10 minutes |
| cspm | Creep score per minute |
| cs_post_15_share | Share of team's total CS after 15 minutes |
| damage_per_minute | Average damage dealt to champions per minute |
| damage_share | Share of total team damage to champions |
| team_damage_post_15_share | Share of total team damage to champions after 15 minutes |
| turret_damage_per_game | Turret damage per game |
| average_gold_per_minute | Average gold earned per minute |
| gold_share | Share of team's total gold earned (excluding inherent gold generation) |
| neutral_objectives_stolen | Neutral objectives stolen from the opponent team |
| wards_per_minute | Wards placed per minute |
| control_wards_per_minute | Control wards placed per minute |
| wards_cleared_per_minute | Enemy wards cleared per minute |

---

## msi_26_champions.csv

| Column | Description |
|----------|----------|
| champion | Champion name |
| games_played | Total games played across all roles |
| kills | Total kills recorded on the champion |
| deaths | Total deaths recorded on the champion |
| assists | Total assists recorded on the champion |
| pick_rate | Percentage of games in which the champion was picked |
| ban_rate | Percentage of games in which the champion was banned |
| pick_ban_rate | Combined pick and ban presence rate |
| winrate | Win percentage when picked |
| counter_pickrate | Percentage of games played as a counter-pick |
| kda | Kill/Death/Assist ratio |
| kill_participation | Weighted average kill participation |
| gold_diff_10 | Weighted average gold difference at 10 minutes |
| xp_diff_10 | Weighted average experience difference at 10 minutes |
| cs_diff_10 | Weighted average creep score difference at 10 minutes |
| cspm | Weighted average creep score per minute |
| damage_per_minute | Weighted average champion damage per minute |
| damage_share | Weighted average share of team damage |
| gold_share | Weighted average share of team gold |
| wards_per_minute | Weighted average wards placed per minute |
| wards_cleared_per_minute | Weighted average wards cleared per minute |

---

## Notes

- All statistics originate from Oracle's Elixir tournament data, verified and complemented with Liquipedia.
- Champion statistics are aggregated across all positions using games-played weighted averages.
- Percentage values are represented as percentages rather than decimals.
- Gold, experience, and creep score differential statistics are measured relative to the opposing player at 10 minutes unless otherwise specified.