module mux_2_1 (input i0, i1, sel, output y);
	assign y = sel ? i1 : i0;
endmodule

module mux_4_1(i0, i1, sel0, i2, i3, sel1, y2);
    input i0,i1,i2,i3, sel0, sel1;
    output y2;
    wire y0, y1;
    // Logic
    // Mux_2_1 instantiation 
  	mux_2_1 mux_one (i0, i1, sel0, y0); 
  	mux_2_1 mux_two (i2, i3, sel0,  y1); 
  	mux_2_1 mux_three (y0, y1, sel1, y2);
endmodule