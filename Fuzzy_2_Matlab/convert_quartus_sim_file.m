fileID_read = fopen('output.txt','r');
ckt_output = fscanf(fileID_read,'%s',[8 289]);
ckt_output = ckt_output';
ckt_out_d = typecast(uint8(bin2dec(ckt_output)),'uint8');
ckt_surf = reshape(ckt_out_d,17,17);
ckt_surf = double(ckt_surf');
error= ckt_surf-y_new;