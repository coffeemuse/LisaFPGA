`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: N/A
// Engineer: AlexTheCat123
// 
// Create Date: 09/02/2025 06:37:32 PM
// Design Name: Apple Lisa LS259 Addressable Latch
// Module Name: addressable_latch_LS259
// Project Name: LisaFPGA
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module addressable_latch_LS259(
    input logic [2:0] A,
    input logic D,
    input logic _G,
    input logic _CLR,
    output logic [7:0] Q
    );

    always_ff @(negedge _G, negedge _CLR) begin
        // Async clear if _CLR is low
        if (!_CLR) begin
            Q <= 8'b00000000;
        // Otherwise latch the input D into the addressed output
        end else begin
            Q[A] <= D;
        end
    end

endmodule
