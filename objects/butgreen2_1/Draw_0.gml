draw_sprite_ext(battlegreen_2_2,0,0,0,2,2,0,c_white,1)

if tl1<25{
  tl1+=1
  dr1+=26-tl1
  draw_set_alpha(1)
  draw_set_color(c_black)
  draw_rectangle(0,0,320-dr1,480,0)
  draw_rectangle(320+dr1,0,640,480,0)
}

if conti=1 tl2+=1
if tl2<11{
  draw_set_alpha(tl2*0.1)
  draw_set_color(c_black)
  draw_rectangle(0,0,640,480,0)
}
if tl2=10 instance_destroy()

