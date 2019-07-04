param = 0.05;
x = 0:0.01:1;
y1 = fct_corruption_inv(param,x);
y2 = fct_corruption_inv_dec(param,x);
y3 = fct_corruption(param,x);
 y4 = fct_corruption_dec(param,x);
 
 figure; hold on; plot(x,y1,'r.'); plot(x,y2,'g.'); plot(x,y3,'b.');
 plot(x,y4,'k.'); legend('inv up','ind down','up','down')
 title(['param = ' num2str(param)])
 
 

