
{dexetai: 3 ma8htes ba8mo / 2 e3amhnwn foithshs / 0-20
upologizei: meso oro ma8hth / MO ta3hs / opoios exei MO>18 na emfanizei a,b,c analogws}

program case_grade;
uses wincrt;
var i,j:integer;
    a:array[1..3,1..2] of integer;
    MO:array[1..3] of real;
    SMO,K:real;

BEGIN

{diabasma pinaka me elenxo gia times <0 kai >20}

for i:=1 to 3 do
begin
 for j:=1 to 2 do
 begin
  repeat
   write('Ma8hths ',i,', ba8mos ',j,' e3amhnou: ');
   read(a[i,j]);
    if (a[i,j]<0) or (a[i,j]>20) then
    begin
    writeln('egrapses xazomara, epanelabe!');
    end;
   readln;
  until (a[i,j]>-1) and (a[i,j]<21);
 end;
end;

{mesos oros MO kai sunolikos mesos oros SMO p diabazetai ws a8roisma ba8mwn/6}

SMO:=0;
for i:=1 to 3 do
begin
 MO[i]:=0;
 for j:=1 to 2 do
 begin
  MO[i]:=MO[i]+a[i,j]/2;
  SMO:=SMO+a[i,j];
 end;
end;
SMO:=SMO/6;

{grapsimo SMO}

writeln('mesos oros ta3hs einai: ',SMO:0:1);

{grapsimo MO>18 me boh8eia ASCII gia a,b,c}

for i:=1 to 3 do
begin
 case round(MO[i]) of
 19..20: begin
          writeln(MO[i]:0:1,' einai o ma8hths ',char(i+96));
         end;
 end;
end;

END.

