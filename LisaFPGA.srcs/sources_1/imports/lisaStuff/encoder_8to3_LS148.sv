`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: N/A
// Engineer: AlexTheCat123
// 
// Create Date: 08/31/2025 06:12:38 PM
// Design Name: 74LS148 8-to-3 Encoder
// Module Name: encoder_8to3_LS148
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


module encoder_8to3_LS148(
    input logic [7:0] _D,
    input logic _EI,
    //output logic _EO,
    //output logic _GS,
    output logic [2:0] _Q
    );

    // Internal signals to hold the output signals before we take OE into account
    logic [2:0] _Q_int;
    logic _EO_int;
    logic _GS_int;

    // Forward the internal output signals through to the real outputs if _EI (the OE) is low, else set the outputs to all 1's
    assign _Q = _EI ? 3'b111 : _Q_int;
    //assign _EO = _EI ? 1'b1 : _EO_int;
    //assign _GS = _EI ? 1'b1 : _GS_int;

    // Go through all valid input cases
    always_comb begin
        casez (_D)
            8'b0???????: begin
                // And set the outputs accordingly
                _Q_int <= 3'b000;
                _EO_int <= 1'b1;
                _GS_int <= 1'b0;
            end
            8'b10?????: begin
                _Q_int <= 3'b001;
                _EO_int <= 1'b1;
                _GS_int <= 1'b0;
            end
            8'b110????: begin
                _Q_int <= 3'b010;
                _EO_int <= 1'b1;
                _GS_int <= 1'b0;
            end
            8'b1110????: begin
                _Q_int <= 3'b011;
                _EO_int <= 1'b1;
                _GS_int <= 1'b0;
            end
            8'b11110???: begin
                _Q_int <= 3'b100;
                _EO_int <= 1'b1;
                _GS_int <= 1'b0;
            end
            8'b111110??: begin
                _Q_int <= 3'b101;
                _EO_int <= 1'b1;
                _GS_int <= 1'b0;
            end
            8'b1111110?: begin
                _Q_int <= 3'b110;
                _EO_int <= 1'b1;
                _GS_int <= 1'b0;
            end
            8'b11111110: begin
                _Q_int <= 3'b111;
                _EO_int <= 1'b1;
                _GS_int <= 1'b0;
            end
            8'b11111111: begin
                _Q_int <= 3'b111;
                _EO_int <= 1'b0;
                _GS_int <= 1'b1;
            end
            // Default for invalid input combo; all outputs deasserted
            default: begin
                _Q_int <= 3'b111;
                _EO_int <= 1'b1;
                _GS_int <= 1'b1;
            end
        endcase
    end

endmodule
