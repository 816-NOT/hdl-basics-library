module mux_2to1_structural (
    input wire i0,
    input wire i1,
    input wire s,
    output wire y
);

    // Internal connecting wires (like traces on a PCB)
    wire s_bar;
    wire and0;
    wire and1;

    // Instantiate your library NOT gate: y = ~a
    not_gate U_NOT (
        .a(s),
        .y(s_bar)
    );

    // Instantiate your library AND gate for I0: y = a & b
    and_gate U_AND0 (
        .a(i0),
        .b(s_bar),
        .y(and0)
    );

    // Instantiate your library AND gate for I1: y = a & b
    and_gate U_AND1 (
        .a(i1),
        .b(s),
        .y(and1)
    );

    // Instantiate your library OR gate: y = a | b
    or_gate U_OR (
        .a(and0),
        .b(and1),
        .y(y)
    );

endmodule
