`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 11:22:38 AM
// Design Name: 
// Module Name: simtop
// Project Name: 
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

module simtop(

    );
    logic sysclk;
    logic C16M;
    logic [3:0] btn;
    logic [3:0] led;
    logic [3:0] ar;
    logic _PWRSW;

    top dut (
        .sysclk(sysclk),
        .C16M(C16M),
        .btn(btn),
        .led(led),
        .ar(ar),
        ._PWRSW(_PWRSW)
    );

    initial begin
        C16M = 1'b0;
        counter = 1'b0;
        btn = 4'b0000;
        _PWRSW = 1'b1;
        #500;
        btn[0] = 1'b1; // Press reset
        #500;
        btn[0] = 1'b0; // Release reset
        #500000000;
        _PWRSW = 1'b0; // Simulate pressing the power switch
        #100000000;
        _PWRSW = 1'b1; // Simulate releasing the power switch
        //#1000000000;
        //$finish;
    end

    logic counter;
    /*always_ff @(posedge sysclk) begin
        counter <= counter + 1'b1;
        if(counter == 4'b1) begin
            C16M <= ~C16M;
        end
    end*/

    assign C16M = sysclk; // Just use the system clock for now

    always begin
        sysclk = 1'b0;
        #25;
        sysclk = 1'b1;
        #25;
    end


endmodule
