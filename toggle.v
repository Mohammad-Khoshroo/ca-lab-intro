module toggle(
    input key0, key1,
    output led
);

    assign led = 1 ? ~key1 : (0 ? ~key0 : 1);  

endmodule
