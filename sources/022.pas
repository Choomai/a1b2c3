uses crt;
var a:array[1..100,1..100] of longint;
i,j,n,m:byte;
max,min,vtxmax,vtzmax,vtxmin,vtzmin:longint;
begin
  clrscr;
  write('Nhap hang:');readln(n);
  write('Nhap cot:');readln(m);
  for i:=1 to n do
    for j:=1 to m do
    begin
      write('Nhap a[',i,',',j,']:');
      readln(a[i,j]);
    end;
  max:=a[1,1];min:=a[1,1];
  for i:=1 to n do
    for j:=1 to m do
    begin
      if max<a[i,j] then
      begin
        max:=a[i,j];
        vtxmax:=i;
        vtzmax:=j;
      end;
      if min>a[i,j] then
      begin
        min:=a[i,j];
        vtxmin:=i;
        vtzmin:=j;
      end;
    end;
  a[vtxmax,vtzmax]:=min;
  a[vtxmin,vtzmin]:=max;
  for i:=1 to n do
  begin
    for j:=1 to m do
    write(a[i,j],' ');
    writeln;
  end;
end.
{Đổi max,min trong mảng 2 chiều}