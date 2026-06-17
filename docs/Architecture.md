# System Architecture

Clock Input
    ↓
Clock Divider
    ↓
Seconds Counter
    ↓
Minutes Counter
    ↓
Hours Counter
    ↓
Alarm Controller
    ↓
Alarm Output

## Modules

### clock_divider.v
Generates timing tick.

### bcd_counter.v
Implements configurable counter.

### digital_clock_core.v
Controls hour, minute and second counters.

### alarm_controller.v
Compares current time and alarm time.

### digital_clock_top.v
Top-level integration module.