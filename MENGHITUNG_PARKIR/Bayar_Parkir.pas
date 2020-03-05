program Bayar_Parkir;
{I.S.: User Memasukkam Nomor Polisi, Jenis Kendaraan, Jam Masuk,
       Menit Masuk, Jam Keluar Dan Menit Keluar}
{F.S.: Menampilkan Biaya Parkir}
uses crt;
var //Kamus Global
  JM, MM, JK, MK, Jam, Menit : integer;
  Jenis, NoPol : string;

function BayarParkir(Jenis : string; Jam: integer):integer;
var
   Parkir : integer;
begin
 if(jenis='Motor')
  then
   Parkir := 1000
  else
   Parkir := 2500;

 BayarParkir := Parkir + (Jam - 1) * 500;
end;
//badan program utama

 begin
 textbackground(green); textcolor(yellow); clrscr;
 gotoxy(46,3); writeln('BIAYA PARKIR MOTOR DAN MOBIL');
 gotoxy(46,4); writeln('============================');
 gotoxy(46,6); write('Nomor Polisi     : '); readln(NoPol);
 gotoxy(46,7); write('Jenis Kendaraan  : '); readln(Jenis);
 gotoxy(46,8); write('Jam Masuk        : '); readln(JM);
 gotoxy(46,9); write('Menit Masuk      : '); readln(MM);
 gotoxy(46,10); write('Jam Keluar       : '); readln(JK);
 gotoxy(46,11); write('Menit Keluar     : '); readln(MK);
 writeln;
   //menentukan lama parkir
   if (MK < MM)
     then
     begin
      MK := MK + 60;
      JK := JK - 1;
     end;

   if (JK < JM)
     then
      JK := JK + 12;

     Jam   := JK - JM; //lama parkir
     Menit := MK - MM;

 gotoxy(46,12);  writeln('Lama Parkir      : ',Jam,' Jam ' ,Menit,' Menit');
   if ( Menit > 0)
     then
       Jam := Jam + 1;

 gotoxy(46,13); writeln('                 : ',Jam,' Jam ');
 gotoxy(46,14);   writeln('Biaya Parkir     : Rp. ',BayarParkir(Jenis,Jam));
 gotoxy(46,16); writeln('TEKAN ENTER UNTUK KELUAR!!!, TERIMA KASIH');
 readln;

end.
