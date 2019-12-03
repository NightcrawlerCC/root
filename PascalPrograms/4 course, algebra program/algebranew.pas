uses GraphABC;
var 
i,j,z1,t,k,k1,l,z2,k2,k3:integer;
n,nn:byte;
var m: array[1..7,1..7] of integer;
var r: array[1..7] of integer;
var z: array[1..7] of integer;
var x: array[1..7] of integer;
var x1:array[1..7] of integer;
begin
SetWindowWidth(600);
SetWindowHeight(300);
////////////////////////input
    writeln('Сколько всего элементов ЧУМ(не больше 6)??');
       readln(n);
       writeln('Мы выбрали ',n,'       ');
   writeln('Сколько элементов в каждой строке?');
   readln(nn);
   writeln('По ',nn,' элементов в каждой строке');
   
   
   z[1]:=1;
   z[2]:=2;
   z[3]:=3;  
   z[4]:=4;
   z[5]:=5;
   z[6]:=6;
   
      x[1]:= 243;
       x[2]:= 210;
       x[3]:= 280;
       x[4]:= 215;
       x[5]:= 270;
       x[6]:= 243;
       
       x1[1]:= 150;
       x1[2]:= 200;
       x1[3]:= 200;
       x1[4]:= 240;
       x1[5]:= 240;
       x1[6]:= 270;
      
   
       for j:= 1 to n do
       begin
         writeln('Введите строку a[',j,'] ');
         for i:=1 to nn do
         begin
         read(m[j][i]);
         write(m[j][i]);
        end;
       writeln;
   end;
   /////////////////////
   
  for j:= 1 to n do
  begin
  for i:=1 to nn do
         begin
         r[j]:=r[j]+m[j][i]
         
         end;
         write('r[',j,']= ',r[j],' , ');
        end;
        
        
       
          for i:= 1 to n-1 do //сортировка
   begin
   for j:= 2 to n do
     begin
     
      if (r[j] > r[i]) then begin
      
      k := r[i];
      r[i] := r[j];
      r[j]:=k;
      
      z2:=z[i];
      z[i]:=z[j];
      z[j]:=z2;
      
      k2:=x[i];
      x[i]:=x[j];
      x[j]:=k2;
      
      k3:=x1[i];
      x1[i]:=x1[j];
      x1[j]:=k3;
      
      
      for l:= 1 to nn do
      begin
      k1:= m[i,l] ;
      m[i,l] := m[j,l];
      m[j,l]:= k1;
      end;
      end;
      
     end;
    end;
    
     
       
       if n=6 then 
       begin
       DrawCircle(243,150,9);
DrawTextCentered(243,150,z[1]);

DrawCircle(210,200,9);
DrawTextCentered(210,200,z[2]);

DrawCircle(280,200,9);
DrawTextCentered(280,200,z[3]);

DrawCircle(215,240,9);
DrawTextCentered(215,240,z[4]);

DrawCircle(270,240,9);
DrawTextCentered(270,240,z[5]);


DrawCircle(243,270,9);
DrawTextCentered(243,270,z[6]);
       end;
       if n=5 then 
       begin
          DrawCircle(243,150,9);
DrawTextCentered(243,150,z[1]);

DrawCircle(210,200,9);
DrawTextCentered(210,200,z[2]);

DrawCircle(280,200,9);
DrawTextCentered(280,200,z[3]);

DrawCircle(215,240,9);
DrawTextCentered(215,240,z[4]);

DrawCircle(270,240,9);
DrawTextCentered(270,240,z[5]);
       end;
       if n=4 then 
       begin
        DrawCircle(243,150,9);
DrawTextCentered(243,150,z[1]);

DrawCircle(210,200,9);
DrawTextCentered(210,200,z[2]);

DrawCircle(280,200,9);
DrawTextCentered(280,200,z[3]);

DrawCircle(215,240,9);
DrawTextCentered(215,240,z[4]);

       end;
       if n=3 then 
       begin
        DrawCircle(243,150,9);
DrawTextCentered(243,150,z[1]);

DrawCircle(210,200,9);
DrawTextCentered(210,200,z[2]);

DrawCircle(280,200,9);
DrawTextCentered(280,200,z[3]);

       end;
       if n=2 then 
       begin
  DrawCircle(243,150,9);
DrawTextCentered(243,150,z[1]);

DrawCircle(210,200,9);
DrawTextCentered(210,200,z[2]);

end;
        for t:=1 to n-1 do
        begin
        for j:= 2 to n do
        begin
        
        if r[t]>r[j] then
       
        begin
        z1:=0;
        for i:=1 to nn do
        begin
          if ((m[t][i]*m[j][i] = m[j][i]) and  (t<>j))
          then begin
          z1:=z1+1;
          end;
          end;
          
          if z1=nn then begin
          Line(x[t],x1[t],x[j],x1[j]);
          setpencolor(clred);
Line(x[j],x1[j],x[j]-5,x1[j]);
Line(x[j],x1[j],x[j],x1[j]-5);
setpencolor(clblack);


          end;
        end;
        end;
        end;
       
    
    end.