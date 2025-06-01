time2="5/5/2027 12:00AM"
((current = $(date +%s)))
timestamp2=$(date -d "$time2" +%s)
time_difference=$((timestamp2 - current))
days_difference=$((time_difference / 86400))

echo $days_difference Days Left
