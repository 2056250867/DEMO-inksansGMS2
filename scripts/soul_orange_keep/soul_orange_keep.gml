//orange keep jump
if xt=13{
  if keyboard_check_pressed(vk_left){
    xj=-5
  }
  if keyboard_check_pressed(vk_right){
    xj=5
  }
  if keyboard_check_released(vk_left) && keyboard_check_pressed(vk_right)=false{
    if keyboard_check(vk_right){
      xj=5
    }
    else{
      xj=0
    }
  }
  if keyboard_check_released(vk_right) && keyboard_check_pressed(vk_left)=false{
    if keyboard_check(vk_left){
      xj=-5
    }
    else{
      xj=0
    }
  }
  if jump=0{
    if g>0{
      yj-=g
      g=g/1.5
    }
    if g<0.1{
      jump=1
    }
  }
}


//---------------------------------------------------------------------------------------

if xt=13{
  if a>0{
    image_blend=make_color_rgb(170,85,0)
    a-=1
  }
  if a=0{
    image_blend=make_color_rgb(255,128,0)
  }
  image_angle=0
  if x+xj>624{
    x=624
    xllbb=1
  }
  if x+xj<16{
    x=16
    xllbb=1
  }
  if place_free(x+xj,y){
    x+=xj
    xllbb=1
  }
  if place_free(x+xj,y-3) && xllbb=0{
    x+=xj
    move_outside_solid(90,-1)
    xllbb=1
  }
  if place_free(x+xj,y)=false && xllbb=0{
    if xj<0{
      move_contact_solid(180,5)
    }
    if xj>0{
      move_contact_solid(0,5)
    }
  }
  xllbb=0
  
  
  if place_free(x,y+yj) and y+yj<472{
    y+=yj
  }
  if (yj>0 && place_free(x,y+yj)=false) or place_free(x,y+1)=false{
    jump=0
    yj=0
    move_contact_solid(270,5)
    g=4
  }
  else if place_meeting(x,y+yj+1,movingbk) && yj>=0{
    move_contact_all(270,-1)
    jump=0
    yj=0
    g=4
  }
  else if y+yj>472{
    y=472
    jump=0
    yj=0
    g=4
  }
  else if place_free(x,y+1) and place_meeting(x,y+yj,movingbk)=false{
    if jump=1{
      yj+=0.5
    }
    yj+=0.5
  }
}