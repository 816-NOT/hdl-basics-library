module nor_gate (
    input wire a,
    input wire b,
    output wire y
);
    assign y = ~(a | b); // OR operation inverted 
endmodule
