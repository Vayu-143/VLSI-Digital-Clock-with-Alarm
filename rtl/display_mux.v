module display_mux
(
    input [7:0] hour,
    input [7:0] min,
    input [7:0] sec,

    output [3:0] h_tens,
    output [3:0] h_units,

    output [3:0] m_tens,
    output [3:0] m_units,

    output [3:0] s_tens,
    output [3:0] s_units
);

assign h_tens  = hour / 10;
assign h_units = hour % 10;

assign m_tens  = min / 10;
assign m_units = min % 10;

assign s_tens  = sec / 10;
assign s_units = sec % 10;

endmodule