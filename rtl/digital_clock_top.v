module digital_clock_top
(
    input clk,
    input rst,

    input alarm_enable,

    input [7:0] alarm_hour,
    input [7:0] alarm_min,

    output [7:0] sec,
    output [7:0] min,
    output [7:0] hour,

    output alarm
);

digital_clock_core CORE
(
    .clk(clk),
    .rst(rst),

    .sec(sec),
    .min(min),
    .hour(hour)
);

alarm_controller ALARM
(
    .current_hour(hour),
    .current_min(min),

    .alarm_hour(alarm_hour),
    .alarm_min(alarm_min),

    .alarm_enable(alarm_enable),

    .alarm(alarm)
);

endmodule