b+=1
if frac(b/2)=0{
  a+=1
  if a=1{
    ytou1-=1
    xtou1-=1
  }
  if a=2{
    ytou1-=1
    xtou1-=1
    yshen1-=1
    xshen1-=1
  }
  if a=3{
    ytou1-=1
  }
  if a=4{
    ytou1+=2
    yshen1+=1
  }
  if a=5{
    ytou1+=2
    yshen1+=1
  }
  if a=6{
    xtou1+=1
    xshen1+=1
  }
  if a=7{
    ytou1-=1
    xtou1+=1
  }
  if a=8{
    ytou1-=1
    xtou1+=1
    yshen1-=1
    xshen1+=1
  }
  if a=9{
    ytou1-=1
  }
  if a=10{
    ytou1+=1
  }
  if a=11{
    ytou1+=2
    yshen1+=2
  }
  if a=12{
    xtou1-=1
    xshen1-=1
  }
  if a=13{
    ytou1-=1
    yshen1-=2
    a=0
  }
}
draw_sprite_ext(bssp261,0,120+xj,214+yj,1,1,0,c_white,image_alpha)
draw_sprite_ext(bssp260,shenxt,118+xshen1+xj,156+yshen1+yj,1,1,0,c_white,image_alpha)
draw_sprite_ext(bssp259,touxt,120+xtou1+xj,108+ytou1+yj,1,1,0,c_white,image_alpha)

