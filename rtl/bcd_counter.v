module bcd_counter
(
    input clk,
    input rst,
    input enable,
    input [7:0] max_value,

    output reg [7:0] count,
    output reg carry
);

always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        count <= 0;
        carry <= 0;
    end
    else if(enable)
    begin
        if(count == max_value)
        begin
            count <= 0;
            carry <= 1;
        end
        else
        begin
            count <= count + 1;
            carry <= 0;
        end
    end
    else
        carry <= 0;
end

endmodule