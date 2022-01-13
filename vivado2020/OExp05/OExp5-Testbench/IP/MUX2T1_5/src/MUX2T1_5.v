module MUX2T1_5(input [4:0] I0,
                input [4:0] I1,
                input sel,
                output reg [4:0] o);
    always @(*) begin
        if(sel) begin
            o = I1;
        end
        else begin
            o = I0;
        end
    end
endmodule