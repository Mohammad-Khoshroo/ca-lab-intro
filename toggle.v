module toggle(
    input clk, key1, key2,
    output reg led1, led2
);

    always @(posedge key1,posedge key2) begin
        if (key1) begin
            led1 <= 0;
        end
        else if (key2) begin
            led1 <= 1;
        end
    end


    always @(posedge clk) begin
        if (~key1) begin
            led2 <= 0;
        end
        else if (~key2) begin
            led2 <= 1;
        end
    end

endmodule
