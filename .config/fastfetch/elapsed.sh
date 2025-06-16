time1="5/5/2025 12:00AM"
((current = $(date +%s)))
timestamp1=$(date -d "$time1" +%s)
time_difference=$((current - timestamp1))
days_difference=$((time_difference / 86400))

echo $days_difference days
