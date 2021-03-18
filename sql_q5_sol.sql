SELECT COUNT(player_id) AS bookings_during_stopagetime
FROM player_booked_fx
WHERE play_schedule = 'ST';