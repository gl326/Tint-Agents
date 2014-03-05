objReplay.recording = 0;
objReplay.replayFrame = ds_list_size(objReplay.buffer)-1;
objReplay.rewind = 0;
//view_surface_id[0] = -1;

/*
if debug_mode{
for(var i=0;i<ds_list_size(objReplay.buffer);i+=1){
surface_save(ds_list_find_value(objReplay.buffer,i),string(i)+".png");
}
}*/
