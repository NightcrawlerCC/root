uses GraphABC;
var 
i,j,z1,t,k,k1,l:integer;
n,nn:byte;
var m: array[1..6,1..20] of integer;
var r: array[1..20] of integer;
var x: array[1..6] of integer;
var x1:array[1..6] of integer;
begin
SetWindowWidth(600);
SetWindowHeight(300);
       writeln('Сколько всего элементов ЧУМ(не больше 6)??');
       readln(n);
       writeln('Мы выбрали ',n,'       ');
   writeln('Сколько элементов в каждой строке?');
   readln(nn);
   writeln('По ',nn,' элементов в каждой строке');
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
       
       if n=6 then 
       begin
       DrawCircle(243,150,9);
DrawTextCentered(243,150,1);

DrawCircle(210,200,9);
DrawTextCentered(210,200,2);

DrawCircle(280,200,9);
DrawTextCentered(280,200,3);

DrawCircle(215,240,9);
DrawTextCentered(215,240,4);

DrawCircle(270,240,9);
DrawTextCentered(270,240,5);


DrawCircle(243,270,9);
DrawTextCentered(243,270,6);
       end;
       if n=5 then 
       begin
         DrawCircle(243,150,9);
DrawTextCentered(243,150,1);

DrawCircle(210,200,9);
DrawTextCentered(210,200,2);

DrawCircle(280,200,9);
DrawTextCentered(280,200,3);

DrawCircle(215,240,9);
DrawTextCentered(215,240,4);

DrawCircle(270,240,9);
DrawTextCentered(270,240,5);
       end;
       if n=4 then 
       begin
        DrawCircle(243,150,9);
DrawTextCentered(243,150,1);

DrawCircle(210,200,9);
DrawTextCentered(210,200,2);

DrawCircle(280,200,9);
DrawTextCentered(280,200,3);

DrawCircle(215,240,9);
DrawTextCentered(215,240,4);

       end;
       if n=3 then 
       begin
        DrawCircle(243,150,9);
DrawTextCentered(243,150,1);

DrawCircle(210,200,9);
DrawTextCentered(210,200,2);

DrawCircle(280,200,9);
DrawTextCentered(280,200,3);

       end;
       if n=2 then 
       begin
 DrawCircle(243,150,9);
DrawTextCentered(243,150,1);

DrawCircle(210,200,9);
DrawTextCentered(210,200,2);
       
       end;
       
       
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
   
  for j:= 1 to n do
  begin
  for i:=1 to nn do
         begin
         if (m[j][i]=1) then 
         begin
         r[j]:=r[j]+1;
         end;
        end;
        end;
        
        
   for i:= 1 to n-1 do //сортировка
   begin
   for j:= 1 to n-1 do
     begin
      if r[i] < r[j+1] then begin
       k := r[j];
      r[j] := r[j+1];
      r[j+1]:=k;
      for l:= 1 to nn do
      begin
      k1:= m[i,l] ;
      m[i,l] := m[i+1,l];
      m[i+1,j]:= k1;
      end;
      end;
      
     end;
    end;
    
    
        for t:=1 to n do
        begin
        for j:= 1 to n do
        begin
        z1:=0;
        if (r[t]>r[j]) then
       
        begin
        
        for i:=1 to nn do
        begin
          if (m[t][i]*m[j][i] = m[j][i]) and  (t<>j)
          then begin
          writeln;
          
          end else
          begin
          z1:=1;
          end;
          if z1=0 then begin
          Line(x[t],x1[t],x[j],x1[j])
          end
          end
        end;
        end;
        end;
 end.