uses crt;
var a,b:array[1..100,1..100] of longint;
tong,ttleven,ttlodd,tam:int64;
n,m,i,j:byte;
begin
  clrscr;
  write('Nhap hang:');readln(n);
  write('Nhap cot:');readln(m);
  for i:=1 to n do
    for j:=1 to m do
    begin
      write('a[',i,',',j,']:');
      readln(a[i,j]);
    end;
  for i:=1 to n do tong:=tong+a[i,i];
  writeln('Tong cac phan tu duong cheo chinh:',tong);
  tong:=0;
  for i:=1 to n do tong:=tong+a[i,n-1+i];
  write('Tong cac phan tu duong cheo phu:',tong);
  tong:=0;
  for i:=1 to n do
    if i mod 2=0 then for j:=1 to n do ttleven:=ttleven+a[i,j]
      else for j:=1 to n do ttlodd:=ttlodd+a[i,j];
  writeln('Tong cac hang so chan:',ttleven);
  writeln('Tong cac hang so le:',ttlodd);
  for i:=1 to n do
    for j:=1 to m do b[j,i]:=a[i,j];
  tam:=n;n:=m;m:=tam;
  for i:=1 to n do
  begin
    for j:=1 to m do write(b[i,j]);
    writeln;
  end;
end.
{Tính tổng đường chéo chính, phụ, các số chẵn và lẻ trong 1 hàng, ma trận chuyển vị}