module digital_clock_core
(
    input clk,
    input rst,

    output [7:0] sec,
    output [7:0] min,
    output [7:0] hour
);

wire tick;

wire sec_carry;
wire min_carry;

clock_divider #(.DIVISOR(10))
u_div
(
    .clk(clk),
    .rst(rst),
    .tick(tick)
);

bcd_counter u_sec
(
    .clk(clk),
    .rst(rst),
    .enable(tick),
    .max_value(8'd59),
    .count(sec),
    .carry(sec_carry)
);

bcd_counter u_min
(
    .clk(clk),
    .rst(rst),
    .enable(sec_carry),
    .max_value(8'd59),
    .count(min),
    .carry(min_carry)
);

bcd_counter u_hour
(
    .clk(clk),
    .rst(rst),
    .enable(min_carry),
    .max_value(8'd23),
    .count(hour),
    .carry()
);

endmodule