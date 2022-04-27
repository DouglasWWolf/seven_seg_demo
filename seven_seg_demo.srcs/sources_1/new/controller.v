/*
    Every time the user presses BTNU (the "up" button), this displays a random number
    in hex on the left-hand 4-digit display, and the count (in decimal) of the number
    of times the button has been pressed on the right-hand 4-digit display.   Pressing  
    the CPU_RESET button clears both values to zero.
    
    Look at the top of the module "seven_seg" for a description of the various display
    styles available for the two 4-digit 7-segment displays
    
    This runs on a Digilent Nexys-A7-100T development board
*/


module controller
(
    input  CLK, RESETN, BUTTON,
    output[31:0] VALUE
);
   

    reg[15:0] random, count, free_timer;
    always @(posedge CLK) begin
        free_timer <= free_timer + 1;
        if (RESETN == 0) begin
            count  <= 0;
            random <= 0;
        end else begin
            if (BUTTON) begin
                count  <= count + 1;
                random <= free_timer;
            end
        end    
    
    end
    
    assign VALUE = {random, count};
    
endmodule
