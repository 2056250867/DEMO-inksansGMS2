if index<10 && bl1=0{
  index+=1
  bkbigset(35+index*20,250-index*2,570-index*40,140+index*2);
  boss1.yj-=2
}
if index=10 && bl1=0{
  bl1=1
}
if bl1=1{
  image_speed=0
  instance_create(320,310,player)
  instance_create(0,0,start.but[1])
  bl1=2
}
if endt=1{
  index-=1;
  bkbigset(35+index*20,250-index*2,570-index*40,140+index*2);
  boss1.yj+=2
  if index=0{
    endtbk(bk13,14)
  }
}

