module toggle(
    input key1, key2,
    output led1, led2
);

    assign led1 = 1 ? ~key1 : (0 ? ~key2 : 1);  

endmodule
