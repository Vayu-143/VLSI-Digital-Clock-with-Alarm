`timescale 1ns/1ps

module digital_clock_tb;

reg clk;
reg rst;

reg alarm_enable;

reg [7:0] alarm_hour;
reg [7:0] alarm_min;

wire [7:0] sec;
wire [7:0] min;
wire [7:0] hour;

wire alarm;

digital_clock_top DUT
(
    .clk(clk),
    .rst(rst),

    .alarm_enable(alarm_enable),

    .alarm_hour(alarm_hour),
    .alarm_min(alarm_min),

    .sec(sec),
    .min(min),
    .hour(hour),

    .alarm(alarm)
);

always #5 clk = ~clk;

initial
begin

    $dumpfile("clock.vcd");
    $dumpvars(0,digital_clock_tb);

    clk = 0;

    rst = 1;

    alarm_enable = 1;

    alarm_hour = 0;
    alarm_min = 1;

    #20;

    rst = 0;

    #100000;

    $finish;

end

initial
begin

$monitor(
"TIME=%0t H=%0d M=%0d S=%0d Alarm=%b",
$time,
hour,
min,
sec,
alarm
);

end

endmodule