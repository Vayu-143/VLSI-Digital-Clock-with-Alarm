# Verification Plan

## Test Cases

1. Reset Verification
Expected:
All counters become zero.

2. Seconds Counter
Expected:
0 → 59

3. Minute Rollover
Expected:
59 → 0

4. Hour Increment
Expected:
0 → 23

5. Alarm Trigger
Expected:
alarm = 1 when time matches.

6. Alarm Disable
Expected:
alarm = 0