uses crt;
const chars=['A'..'Z','a'..'z'];
var a:string;
i,dem:byte;
begin
clrscr;
write('Nhap xau:');readln(a);
for i:=length(a) downto 1 do write(a[i]);
writeln;
write('Cac chu cai co trong xau:');
for i:=1 to length(a) do
if a[i] in chars then
begin
 inc(dem);
 write(a[i],' ');
end;
writeln;
write('Co ',dem,' chu cai trong xau');
readln;
end.
{Dao nguoc, kiem tra cac chu cai va so luong cua chung trong xau}