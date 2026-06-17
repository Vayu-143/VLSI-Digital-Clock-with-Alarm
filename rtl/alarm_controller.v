module alarm_controller
(
    input [7:0] current_hour,
    input [7:0] current_min,

    input [7:0] alarm_hour,
    input [7:0] alarm_min,

    input alarm_enable,

    output reg alarm
);

always @(*)
begin
    if(alarm_enable &&
       current_hour == alarm_hour &&
       current_min == alarm_min)
        alarm = 1;
    else
        alarm = 0;
end

endmodule