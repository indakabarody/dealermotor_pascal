Program indaka_belimotor;
Uses dos, crt;
Type
    Daftaruangmuka = array [1..5] of real;
    Daftarangsuran = array [1..5,1..3] of real;
    Daftarnamabarang = array [1..5] of string;
    Daftarhargaperbuah = array [1..5] of real;
    Daftarbunga = array [1..5] of real;
Const
     barang : DaftarNamabarang = ('SupraX125','Vario125','Revo110','NewBladeS','beATeSP');
     HargaPerBuah : DaftarHargaPerBuah =
     (17550000,17800000,13550000,16200000,15050000);
     muka : Daftaruangmuka = (1750000,1600000,1200000,1500000,1400000);
     bunga : daftarbunga = (1,1,3,3,2);
     days : array [0..6] of string [6] =
            ('Minggu', 'Senin', 'Selasa', 'Rabu',
            'Kamis', 'Jumat','Sabtu');
     month : array [1..12] of string [3] =
             ('Januari','Februari','Maret','April',
             'Mei','Juni','Juli','Agustus',
             'September','Oktober','November','Desember');
Var
   nobarang, angsur : byte;
   yr,mo,date,dow,hr,min,sec,hund: word;
   angsurtiapbulan, bungamotor, angsuran, angsuranbunga, kurang, bayar, kembali, buah, TotalHarga, totalsemua : Real;
   nama, lunas : String;
   Kual,c,d,beli,lagi,again : Char;
   x,y, pilih,language : integer;

Procedure tunai;
Begin
BEGIN
REPEAT
clrscr;
Gotoxy (25,1); Writeln ('SELAMAT DATANG DI MAOSPATI MOTOR');
Gotoxy (10,3); Write ('Nama Anda : '); readln (nama);
Gotoxy (10,4);
       For x := 1 to 56 do
       Begin
       Write ('=');
       End;
Gotoxy (10,8);
       For x := 1 to 55 do
       Begin
       Write ('=');
       End;
Gotoxy (10,18);
       For x := 1 to 56 do
       Begin
       Write ('=');
       End;
           for y:=1 to 13 do
           begin
       gotoxy (10,4+y);
           writeln ('|');
           end;
           for y:=1 to 13 do
           begin
       gotoxy (14,4+y);
           writeln ('|');
           end;
           for y:=1 to 13 do
           begin
       gotoxy (37,4+y);
           writeln ('|');
           end;
           for y:=1 to 13 do
           begin
       gotoxy (65,4+y);
           writeln ('|');
       end;

Gotoxy(55,21);
GetTime(hr,min,sec,hund);
IF (0<=hr) AND (hr<=10) THEN
Write ('Selamat pagi, ',nama,'.');
IF (11<=hr) AND (hr<=14) THEN
Write ('Selamat siang, ',nama,'.');
IF (15<=hr) AND (hr<=18) THEN
Write ('Selamat sore, ',nama,'.');
IF (19<=hr) AND (hr<=23) THEN
Write ('Selamat malam, ',nama,'.');

Gotoxy (55,23); writeln ('Sekarang hari : ');
Gotoxy (55,24);
Getdate (yr,mo,date,dow);
Writeln (days [dow],', ',date:0,' ',month [mo],' ',yr:0);


Gotoxy (11,6); Write ('NO.');
Gotoxy (18,6); Write ('DAFTAR MOTOR');
Gotoxy (46,6); Write ('HARGA MOTOR');

Gotoxy (12,9); Write ('1');
Gotoxy (12,11); Write ('2');
Gotoxy (12,13); Write ('3');
Gotoxy (12,15); Write ('4');
Gotoxy (12,17); Write ('5');

Gotoxy (16,9); Write ('Supra X 125 CW');
Gotoxy (16,11); Write ('Vario Techno 125 CBS');
Gotoxy (16,13); Write ('Absolute Revo 110');
Gotoxy (16,15); Write ('New Blade S');
Gotoxy (16,17); Write ('beAT eSP CW');

Gotoxy (45,9); Write ('Rp.17.550.000');
Gotoxy (45,11); Write ('Rp.17.800.000');
Gotoxy (45,13); Write ('Rp.13.550.000');
Gotoxy (45,15); Write ('Rp.16.200.000');
Gotoxy (45,17); Write ('Rp.15.050.000');

BEGIN
REPEAT
Gotoxy (10,19);Write ('Nomor motor Pilihan Anda (1-5)       = '); Readln (NoBarang);
UNTIL
(NOBARANG in [1..5]);
END;
Gotoxy (10,20);Write ('Jumlah motor Pilihan Anda            = '); Readln (buah);
TotalHarga := Buah*HargaPerBuah [NoBarang];
clrscr;
BEGIN
REPEAT
clrscr;
Gotoxy (35,6); Write ('MAOSPATI MOTOR');
Gotoxy (55,22); writeln ('Sekarang hari : ');
Gotoxy (55,23);
Getdate (yr,mo,date,dow);
Writeln (days [dow],', ',date:0,' ',month [mo],' ',yr:0);
Gotoxy (21,25); write (char(73),char(110),char(100),char(97),char(107),char(97),
' ',char(66),char(97),char(114),char(111),char(100),char(121),
' XI MM 1 © Hak Cipta 2017');
Gotoxy (2,9);Writeln  ('Anda Membeli Motor   : ',Barang [NoBarang]);
Gotoxy (2,10);Writeln ('Jumlah Barang        : ',Buah:0:0);
Gotoxy (2,11);Writeln ('Harga Per Unit       : ',HargaPerBuah [NoBarang]:0:2,' Rupiah');
Gotoxy (2,12);Writeln ('Total Harga          : ',TotalHarga:0:2,' Rupiah');
Gotoxy (2,13);Write   ('Bayar                : '); readln (bayar);
UNTIL
(bayar>=totalharga);
END;
kembali := bayar-totalharga;
Gotoxy (2,14);Write   ('Kembali              : ',kembali:0:2,' Rupiah');
Gotoxy (25,19); write ('Konfirmasi ? (Y/T) : '); readln (beli);
UNTIL
(beli in ['Y','y']);
END;
Clrscr;
Gotoxy (15,2);
       For x := 1 to 50 do
       Begin
       Write ('=');
       End;
Gotoxy (15,5);
       For x := 1 to 50 do
       Begin
       Write ('=');
       End;
Gotoxy (15,14);
       For x := 1 to 50 do
       Begin
       Write ('=');
       End;
Gotoxy (15,9);
       For x := 1 to 50 do
       Begin
       Write ('=');
       End;
Gotoxy (15,23);
       For x := 1 to 50 do
       Begin
       Write ('=');
       End;
           for y:=1 to 20 do
           begin
           gotoxy (15,2+y);
           writeln ('|');
           end;
           for y:=1 to 20 do
           begin
           gotoxy (64,2+y);
           writeln ('|');
           end;
Gotoxy (29,3); writeln ('STRUK TANDA PEMBAYARAN');
Gotoxy (33,4); Writeln ('MAOSPATI MOTOR');
Gotoxy (17,6); writeln ('Nama : ',nama);
Gotoxy (18,8); writeln ('PESANAN');
Gotoxy (43,8); writeln ('HARGA');
Gotoxy (56,8); writeln ('JUMLAH');
Gotoxy (17,11); writeln (buah:0:0,' ',barang[nobarang]);
Gotoxy (34,11); writeln (kual);
Gotoxy (40,11); writeln (HargaPerBuah [NoBarang]:0:2);
Gotoxy (53,11); writeln (TotalHarga:0:2);

Gotoxy (40,15); writeln ('TOTAL   : ');
Gotoxy (51,15); writeln (TotalHarga:0:2);
Gotoxy (40,16); Writeln ('BAYAR   : ');
Gotoxy (51,16); writeln (bayar:0:2);
Gotoxy (40,17); Writeln ('KEMBALI : ');
Gotoxy (51,17); writeln (kembali:0:2);

IF bayar>=totalharga then lunas:='[LUNAS]'
else lunas:='[BELUM LUNAS]';

Gotoxy (47,19); writeln (lunas);

Gotoxy (17,19);
Getdate (yr,mo,date,dow);
Writeln (days [dow],', ',date:0,' ',month [mo],' ',yr:0);

Gotoxy(17,20);
GetTime(hr,min,sec,hund);
write(hr,':',min,':',sec,' WIB');

Gotoxy (23,22); Writeln ('Terima kasih atas kunjungan Anda.');

end;

Procedure kredit;
Begin
BEGIN
REPEAT
clrscr;
Gotoxy (25,1); Writeln ('SELAMAT DATANG DI MAOSPATI MOTOR');
Gotoxy (5,3); Write ('Nama Anda : '); readln (nama);
Gotoxy (5,4);
       For x := 1 to 66 do
       Begin
       Write ('=');
       End;
Gotoxy (5,8);
       For x := 1 to 66 do
       Begin
       Write ('=');
       End;
Gotoxy (5,18);
       For x := 1 to 66 do
       Begin
       Write ('=');
       End;
           for y:=1 to 13 do
           begin
       gotoxy (5,4+y);
           writeln ('|');
           end;
           for y:=1 to 13 do
           begin
       gotoxy (9,4+y);
           writeln ('|');
           end;
           for y:=1 to 13 do
           begin
       gotoxy (32,4+y);
           writeln ('|');
           end;
           for y:=1 to 13 do
           begin
       gotoxy (50,4+y);
           writeln ('|');
       end;
           for y:=1 to 13 do
           begin
       gotoxy (70,4+y);
           writeln ('|');
       end;

Gotoxy(55,21);
GetTime(hr,min,sec,hund);
IF (0<=hr) AND (hr<=10) THEN
Write ('Selamat pagi, ',nama,'.');
IF (11<=hr) AND (hr<=14) THEN
Write ('Selamat siang, ',nama,'.');
IF (15<=hr) AND (hr<=18) THEN
Write ('Selamat sore, ',nama,'.');
IF (19<=hr) AND (hr<=23) THEN
Write ('Selamat malam, ',nama,'.');

Gotoxy (55,23); writeln ('Sekarang hari : ');
Gotoxy (55,24);
Getdate (yr,mo,date,dow);
Writeln (days [dow],', ',date:0,' ',month [mo],' ',yr:0);


Gotoxy (6,6); Write ('NO.');
Gotoxy (15,6); Write ('DAFTAR MOTOR');
Gotoxy (36,6); Write ('HARGA MOTOR');
Gotoxy (55,6); Write ('UANG  MUKA');

Gotoxy (7,9); Write ('1');
Gotoxy (7,11); Write ('2');
Gotoxy (7,13); Write ('3');
Gotoxy (7,15); Write ('4');
Gotoxy (7,17); Write ('5');

Gotoxy (11,9); Write ('Supra X 125 CW');
Gotoxy (11,11); Write ('Vario Techno 125 CBS');
Gotoxy (11,13); Write ('Absolute Revo 110');
Gotoxy (11,15); Write ('New Blade S');
Gotoxy (11,17); Write ('beAT eSP CW');

Gotoxy (35,9); Write ('Rp.17.550.000');
Gotoxy (35,11); Write ('Rp.17.800.000');
Gotoxy (35,13); Write ('Rp.13.550.000');
Gotoxy (35,15); Write ('Rp.16.200.000');
Gotoxy (35,17); Write ('Rp.15.050.000');

Gotoxy (54,9); Write ('Rp.1.750.000');
Gotoxy (54,11); Write ('Rp.1.600.000');
Gotoxy (54,13); Write ('Rp.1.200.000');
Gotoxy (54,15); Write ('Rp.1.500.000');
Gotoxy (54,17); Write ('Rp.1.400.000');

BEGIN
REPEAT                                                       
Gotoxy (10,19);Write ('Nomor motor Pilihan Anda (1-5)          = '); Readln (NoBarang);
UNTIL
(NOBARANG in [1..5]);
END;
BEGIN                                                      
REPEAT                                         
Gotoxy (10,20);Write ('Mengangsur berapa bulan? (Max 36 bln.)  = '); Readln (angsur);
UNTIL
(angsur in [1..36]);
END;
TotalHarga := HargaPerBuah[NoBarang];
Kurang := TotalHarga-muka[nobarang];
angsuran := kurang/angsur;
Bungamotor := bunga [NoBarang]/100*kurang;
angsurtiapbulan := angsuran + bungamotor;
totalsemua := muka[nobarang] + angsur*angsurtiapbulan;
clrscr;
clrscr;
Gotoxy (35,5); Write ('MAOSPATI MOTOR');
Gotoxy (55,22); writeln ('Sekarang hari : ');
Gotoxy (55,23);
Getdate (yr,mo,date,dow);
Writeln (days [dow],', ',date:0,' ',month [mo],' ',yr:0);
Gotoxy (21,25); write (char(73),char(110),char(100),char(97),char(107),char(97),
' ',char(66),char(97),char(114),char(111),char(100),char(121),
' XI MM 1 © Hak Cipta 2017');
Gotoxy (2,8);Writeln  ('Anda Membeli Motor          : ',Barang [NoBarang]);
Gotoxy (2,9);Writeln  ('Harga Per Unit              : ',HargaPerBuah [NoBarang]:0:2,' Rupiah');
Gotoxy (2,10);Writeln ('Uang Muka                   : ',muka[NoBarang]:0:2,' Rupiah');
Gotoxy (2,11);Writeln ('Kekurangan                  : ',kurang:0:2,' Rupiah');
Gotoxy (2,12);Writeln ('Angsuran Pokok              : ',angsuran:0:2,' Rupiah');
Gotoxy (2,13);Writeln ('Bunga                       : ',bunga [nobarang]:0:0,' %');
Gotoxy (2,14);Writeln ('Nilai Bunga                 : ',bungamotor:0:2,' Rupiah');
Gotoxy (2,15);Writeln ('Angsuran Tiap Bulan         : ',angsurtiapbulan:0:2,' Rupiah');
Gotoxy (2,16);Writeln ('Lamanya Mengangsur          : ',angsur,' bulan');
Gotoxy (2,17);Writeln ('Total Angsuran              : ',TotalSemua:0:2,' Rupiah');
Gotoxy (25,21); write ('Konfirmasi ? (Y/T) : '); readln (beli);
UNTIL
(beli in ['Y','y']);
END;
Clrscr;
Gotoxy (15,2);
       For x := 1 to 50 do
       Begin
       Write ('=');
       End;
Gotoxy (15,5);
       For x := 1 to 50 do
       Begin
       Write ('=');
       End;
Gotoxy (15,7);
       For x := 1 to 50 do
       Begin
       Write ('=');
       End;
Gotoxy (15,23);
       For x := 1 to 50 do
       Begin
       Write ('=');
       End;
           for y:=1 to 20 do
           begin
           gotoxy (15,2+y);
           writeln ('|');
           end;
           for y:=1 to 20 do
           begin
           gotoxy (64,2+y);
           writeln ('|');
           end;
Gotoxy (29,3); writeln ('STRUK TANDA PEMBAYARAN');
Gotoxy (32,4); Writeln ('MAOSPATI MOTOR');
Gotoxy (17,6); writeln ('Nama : ',nama);
Gotoxy (17,8); writeln  ('PESANAN              : ',barang[nobarang]);
Gotoxy (17,9); writeln  ('HARGA                : ',TotalHarga:0:2);
Gotoxy (17,10); writeln ('UANG MUKA            : ',muka[NoBarang]:0:2,' Rupiah');
Gotoxy (17,11); writeln ('KEKURANGAN           : ',kurang:0:2,' Rupiah');
Gotoxy (17,12); writeln ('ANGSURAN POKOK       : ',angsuran:0:2,' Rupiah');
Gotoxy (17,13); writeln ('BUNGA                : ',bunga [nobarang]:0:0,' %');
Gotoxy (17,14); writeln ('NILAI BUNGA          : ',bungamotor:0:2,' Rupiah');
Gotoxy (17,15); writeln ('ANGSURAN TIAP BULAN  : ',angsurtiapbulan:0:2,' Rupiah');
Gotoxy (17,16); writeln ('LAMA MENGANGSUR      : ',angsur,' bulan');
Gotoxy (17,17); writeln ('TOTAL ANGSURAN       : ',TotalSemua:0:2,' Rupiah');


Gotoxy (17,19);
Getdate (yr,mo,date,dow);
Writeln (days [dow],', ',date:0,' ',month [mo],' ',yr:0);

Gotoxy(17,20);
GetTime(hr,min,sec,hund);
write(hr,':',min,':',sec,' WIB');

Gotoxy (23,22); Writeln ('Terima kasih atas kunjungan Anda.');

end;

Procedure cash;
const
     days : array [0..6] of string [9] =
            ('Sunday', 'Monday', 'Tuesday', 'Wednesday',
            'Thursday', 'Friday','Saturday');
     month : array [1..12] of string [3] =
             ('January','February','March','April',
             'May','June','July','August',
             'September','October','November','December');
Begin
BEGIN
REPEAT
clrscr;
Gotoxy (28,1); Writeln ('WELCOME TO MAOSPATI MOTOR');
Gotoxy (10,3); Write ('Your Name : '); readln (nama);
Gotoxy (10,4);
       For x := 1 to 56 do
       Begin
       Write ('=');
       End;
Gotoxy (10,8);
       For x := 1 to 55 do
       Begin
       Write ('=');
       End;
Gotoxy (10,18);
       For x := 1 to 56 do
       Begin
       Write ('=');
       End;
           for y:=1 to 13 do
           begin
       gotoxy (10,4+y);
           writeln ('|');
           end;
           for y:=1 to 13 do
           begin
       gotoxy (14,4+y);
           writeln ('|');
           end;
           for y:=1 to 13 do
           begin
       gotoxy (37,4+y);
           writeln ('|');
           end;
           for y:=1 to 13 do
           begin
       gotoxy (65,4+y);
           writeln ('|');
       end;

Gotoxy(55,21);
GetTime(hr,min,sec,hund);
IF (0<=hr) AND (hr<=10) THEN
Write ('Good Morning, ',nama,'.');
IF (11<=hr) AND (hr<=14) THEN
Write ('Good Day, ',nama,'.');
IF (15<=hr) AND (hr<=18) THEN
Write ('Good Afternoon, ',nama,'.');
IF (19<=hr) AND (hr<=23) THEN
Write ('Good evening, ',nama,'.');

Gotoxy (55,23); writeln ('Today is : ');
Gotoxy (55,24);
Getdate (yr,mo,date,dow);
Writeln (days [dow],', ',date:0,' ',month [mo],' ',yr:0);


Gotoxy (11,6); Write ('NO.');
Gotoxy (20,6); Write ('MOTOR LIST');
Gotoxy (46,6); Write ('MOTOR PRICE');

Gotoxy (12,9); Write ('1');
Gotoxy (12,11); Write ('2');
Gotoxy (12,13); Write ('3');
Gotoxy (12,15); Write ('4');
Gotoxy (12,17); Write ('5');

Gotoxy (16,9); Write ('Supra X 125 CW');
Gotoxy (16,11); Write ('Vario Techno 125 CBS');
Gotoxy (16,13); Write ('Absolute Revo 110');
Gotoxy (16,15); Write ('New Blade S');
Gotoxy (16,17); Write ('beAT eSP CW');

Gotoxy (45,9); Write ('Rp.17.550.000');
Gotoxy (45,11); Write ('Rp.17.800.000');
Gotoxy (45,13); Write ('Rp.13.550.000');
Gotoxy (45,15); Write ('Rp.16.200.000');
Gotoxy (45,17); Write ('Rp.15.050.000');

BEGIN
REPEAT
Gotoxy (10,19);Write ('Your motorbike choice (1-5)       = '); Readln (NoBarang);
UNTIL
(NOBARANG in [1..5]);
END;
Gotoxy (10,20);Write ('Your motorbike amount             = '); Readln (buah);
TotalHarga := Buah*HargaPerBuah [NoBarang];
clrscr;
BEGIN
REPEAT
clrscr;
Gotoxy (35,6); Write ('MAOSPATI MOTOR');
Gotoxy (55,22); writeln ('Today is : ');
Gotoxy (55,23);
Getdate (yr,mo,date,dow);
Writeln (days [dow],', ',date:0,' ',month [mo],' ',yr:0);
Gotoxy (23,25); write (char(73),char(110),char(100),char(97),char(107),char(97),
' ',char(66),char(97),char(114),char(111),char(100),char(121),
' XI MM 1 © Copyright 2017');
Gotoxy (2,9);Writeln  ('Your Order           : ',Barang [NoBarang]);
Gotoxy (2,10);Writeln ('Amount               : ',Buah:0:0);
Gotoxy (2,11);Writeln ('Price Per Unit       : ',HargaPerBuah [NoBarang]:0:2,' Rupiah');
Gotoxy (2,12);Writeln ('Total                : ',TotalHarga:0:2,' Rupiah');
Gotoxy (2,13);Write   ('Pay                  : '); readln (bayar);
UNTIL
(bayar>=totalharga);
END;
kembali := bayar-totalharga;
Gotoxy (2,14);Write   ('Change               : ',kembali:0:2,' Rupiah');
Gotoxy (29,19); write ('Confirm ? (Y/N) : '); readln (beli);
UNTIL
(beli in ['Y','y']);
END;
Clrscr;
Gotoxy (15,2);
       For x := 1 to 50 do
       Begin
       Write ('=');
       End;
Gotoxy (15,5);
       For x := 1 to 50 do
       Begin
       Write ('=');
       End;
Gotoxy (15,14);
       For x := 1 to 50 do
       Begin
       Write ('=');
       End;
Gotoxy (15,9);
       For x := 1 to 50 do
       Begin
       Write ('=');
       End;
Gotoxy (15,23);
       For x := 1 to 50 do
       Begin
       Write ('=');
       End;
           for y:=1 to 20 do
           begin
           gotoxy (15,2+y);
           writeln ('|');
           end;
           for y:=1 to 20 do
           begin
           gotoxy (64,2+y);
           writeln ('|');
           end;
Gotoxy (32,3); writeln ('PROOF OF PAYMENT');
Gotoxy (33,4); Writeln ('MAOSPATI MOTOR');
Gotoxy (17,6); writeln ('Name : ',nama);
Gotoxy (18,8); writeln ('ORDER');
Gotoxy (43,8); writeln ('PRICE');
Gotoxy (56,8); writeln ('AMOUNT');
Gotoxy (17,11); writeln (buah:0:0,' ',barang[nobarang]);
Gotoxy (34,11); writeln (kual);
Gotoxy (40,11); writeln (HargaPerBuah [NoBarang]:0:2);
Gotoxy (53,11); writeln (TotalHarga:0:2);

Gotoxy (40,15); writeln ('TOTAL   : ');
Gotoxy (51,15); writeln (TotalHarga:0:2);
Gotoxy (40,16); Writeln ('PAY     : ');
Gotoxy (51,16); writeln (bayar:0:2);
Gotoxy (40,17); Writeln ('CHANGE  : ');
Gotoxy (51,17); writeln (kembali:0:2);

IF bayar>=totalharga then lunas:='[PAID OFF]'
else lunas:='[NOT PAID OFF YET]';

Gotoxy (47,19); writeln (lunas);

Gotoxy (17,19);
Getdate (yr,mo,date,dow);
Writeln (days [dow],', ',date:0,' ',month [mo],' ',yr:0);

Gotoxy(17,20);
GetTime(hr,min,sec,hund);
write(hr,':',min,':',sec,' WIB');

Gotoxy (28,22); Writeln ('Thanks for your visit.');

end;

Procedure credit;
const
     days : array [0..6] of string [9] =
            ('Sunday', 'Monday', 'Tuesday', 'Wednesday',
            'Thursday', 'Friday','Saturday');
     month : array [1..12] of string [3] =
             ('January','February','March','April',
             'May','June','July','August',
             'September','October','November','December');
Begin
BEGIN
REPEAT
clrscr;
Gotoxy (28,1); Writeln ('WELCOME TO MAOSPATI MOTOR');
Gotoxy (5,3); Write ('Your Name : '); readln (nama);
Gotoxy (5,4);
       For x := 1 to 66 do
       Begin
       Write ('=');
       End;
Gotoxy (5,8);
       For x := 1 to 66 do
       Begin
       Write ('=');
       End;
Gotoxy (5,18);
       For x := 1 to 66 do
       Begin
       Write ('=');
       End;
           for y:=1 to 13 do
           begin
       gotoxy (5,4+y);
           writeln ('|');
           end;
           for y:=1 to 13 do
           begin
       gotoxy (9,4+y);
           writeln ('|');
           end;
           for y:=1 to 13 do
           begin
       gotoxy (32,4+y);
           writeln ('|');
           end;
           for y:=1 to 13 do
           begin
       gotoxy (50,4+y);
           writeln ('|');
       end;
           for y:=1 to 13 do
           begin
       gotoxy (70,4+y);
           writeln ('|');
       end;

Gotoxy(55,21);
GetTime(hr,min,sec,hund);
IF (0<=hr) AND (hr<=10) THEN
Write ('Good morning, ',nama,'.');
IF (11<=hr) AND (hr<=14) THEN
Write ('Good day, ',nama,'.');
IF (15<=hr) AND (hr<=18) THEN
Write ('Good afternoon, ',nama,'.');
IF (19<=hr) AND (hr<=23) THEN
Write ('Good evening, ',nama,'.');

Gotoxy (55,23); writeln ('Today is : ');
Gotoxy (55,24);
Getdate (yr,mo,date,dow);
Writeln (days [dow],', ',date:0,' ',month [mo],' ',yr:0);


Gotoxy (6,6); Write ('NO.');
Gotoxy (15,6); Write ('MOTOR LIST');
Gotoxy (36,6); Write ('MOTOR PRICE');
Gotoxy (54,6); Write ('DOWN PAYMENT');

Gotoxy (7,9); Write ('1');
Gotoxy (7,11); Write ('2');
Gotoxy (7,13); Write ('3');
Gotoxy (7,15); Write ('4');
Gotoxy (7,17); Write ('5');

Gotoxy (11,9); Write ('Supra X 125 CW');
Gotoxy (11,11); Write ('Vario Techno 125 CBS');
Gotoxy (11,13); Write ('Absolute Revo 110');
Gotoxy (11,15); Write ('New Blade S');
Gotoxy (11,17); Write ('beAT eSP CW');

Gotoxy (35,9); Write ('Rp.17.550.000');
Gotoxy (35,11); Write ('Rp.17.800.000');
Gotoxy (35,13); Write ('Rp.13.550.000');
Gotoxy (35,15); Write ('Rp.16.200.000');
Gotoxy (35,17); Write ('Rp.15.050.000');

Gotoxy (54,9); Write ('Rp.1.750.000');
Gotoxy (54,11); Write ('Rp.1.600.000');
Gotoxy (54,13); Write ('Rp.1.200.000');
Gotoxy (54,15); Write ('Rp.1.500.000');
Gotoxy (54,17); Write ('Rp.1.400.000');

BEGIN
REPEAT                                                       
Gotoxy (10,19);Write ('Your motorbike choice (1-5)          = '); Readln (NoBarang);
UNTIL
(NOBARANG in [1..5]);
END;
BEGIN                                                      
REPEAT                                         
Gotoxy (10,20);Write ('Plan Duration (Max 36 months)        = '); Readln (angsur);
UNTIL
(angsur in [1..36]);
END;
TotalHarga := HargaPerBuah[NoBarang];
Kurang := TotalHarga-muka[nobarang];
angsuran := kurang/angsur;
Bungamotor := bunga [NoBarang]/100*kurang;
angsurtiapbulan := angsuran + bungamotor;
totalsemua := muka[nobarang] + angsur*angsurtiapbulan;
clrscr;
clrscr;
Gotoxy (35,5); Write ('MAOSPATI MOTOR');
Gotoxy (55,22); writeln ('Today is : ');
Gotoxy (55,23);
Getdate (yr,mo,date,dow);
Writeln (days [dow],', ',date:0,' ',month [mo],' ',yr:0);
Gotoxy (23,25); write (char(73),char(110),char(100),char(97),char(107),char(97),
' ',char(66),char(97),char(114),char(111),char(100),char(121),
' XI MM 1 © Copyright 2017');
Gotoxy (2,8);Writeln  ('Your Order                  : ',Barang [NoBarang]);
Gotoxy (2,9);Writeln  ('Price per Unit              : ',HargaPerBuah [NoBarang]:0:2,' Rupiah');
Gotoxy (2,10);Writeln ('Down Payment                : ',muka[NoBarang]:0:2,' Rupiah');
Gotoxy (2,11);Writeln ('Deficiency                  : ',kurang:0:2,' Rupiah');
Gotoxy (2,12);Writeln ('Primary Installment Payment : ',angsuran:0:2,' Rupiah');
Gotoxy (2,13);Writeln ('Interest                    : ',bunga [nobarang]:0:0,' %');
Gotoxy (2,14);Writeln ('Interest Value              : ',bungamotor:0:2,' Rupiah');
Gotoxy (2,15);Writeln ('Per Month Payment           : ',angsurtiapbulan:0:2,' Rupiah');
Gotoxy (2,16);Writeln ('Duration                    : ',angsur,' month(s)');
Gotoxy (2,17);Writeln ('Total Installment Payment   : ',TotalSemua:0:2,' Rupiah');
Gotoxy (29,21); write ('Confirm ? (Y/N) : '); readln (beli);
UNTIL
(beli in ['Y','y']);
END;
Clrscr;
Gotoxy (15,2);
       For x := 1 to 50 do
       Begin
       Write ('=');
       End;
Gotoxy (15,5);
       For x := 1 to 50 do
       Begin
       Write ('=');
       End;
Gotoxy (15,7);
       For x := 1 to 50 do
       Begin
       Write ('=');
       End;
Gotoxy (15,23);
       For x := 1 to 50 do
       Begin
       Write ('=');
       End;
           for y:=1 to 20 do
           begin
           gotoxy (15,2+y);
           writeln ('|');
           end;
           for y:=1 to 20 do
           begin
           gotoxy (64,2+y);
           writeln ('|');
           end;
Gotoxy (32,3); writeln ('PROOF OF PAYMENT');
Gotoxy (33,4); Writeln ('MAOSPATI MOTOR');
Gotoxy (17,6); writeln ('Name : ',nama);
Gotoxy (17,8); writeln  ('ORDER                : ',barang[nobarang]);
Gotoxy (17,9); writeln  ('PRICE                : ',TotalHarga:0:2);
Gotoxy (17,10); writeln ('DOWN PAYMENT         : ',muka[NoBarang]:0:2,' Rupiah');
Gotoxy (17,11); writeln ('DEFICIENCY           : ',kurang:0:2,' Rupiah');
Gotoxy (17,12); writeln ('PRIM. INSTALL PAYMENT: ',angsuran:0:2,' Rupiah');
Gotoxy (17,13); writeln ('INTEREST             : ',bunga [nobarang]:0:0,' %');
Gotoxy (17,14); writeln ('INTEREST VALUE       : ',bungamotor:0:2,' Rupiah');
Gotoxy (17,15); writeln ('PER MONTH PAYMENT    : ',angsurtiapbulan:0:2,' Rupiah');
Gotoxy (17,16); writeln ('DURATION             : ',angsur,' month(s)');
Gotoxy (17,17); writeln ('TOTAL INSTALL PAYMENT: ',TotalSemua:0:2,' Rupiah');


Gotoxy (17,19);
Getdate (yr,mo,date,dow);
Writeln (days [dow],', ',date:0,' ',month [mo],' ',yr:0);

Gotoxy(17,20);
GetTime(hr,min,sec,hund);
write(hr,':',min,':',sec,' WIB');

Gotoxy (28,22); Writeln ('Thanks for your visit.');

end;

begin
clrscr;
Gotoxy (27,5); Write ('Bahasa/Language : ');
Gotoxy (27,7); Write ('1. Bahasa Indonesia');
Gotoxy (27,9); Write ('2. English');
Gotoxy (25,21); write ('© 2017 ',char(73),char(110),char(100),char(97),char(107),char(97),
' ',char(66),char(97),char(114),char(111),char(100),char(121),
' XI MM 1');
BEGIN
REPEAT
Gotoxy (18,12); Write ('Pilih Bahasa/Select Your Language (1/2) : '); readln (language);
UNTIL
(language in [1..2]);
end;
case language of

1:     begin
       BEGIN
       REPEAT
       clrscr;
       Gotoxy (33,2); Write ('MAOSPATI MOTOR');
       Gotoxy (20,5); Write ('Pelayanan yang mudah, cepat, dan efisien');
       Gotoxy (12,7); Write ('Kami menjual motor berkualitas dengan harga terjangkau');
       Gotoxy (27,11); Write ('- Tunai bisa');
       Gotoxy (27,13); Write ('- Kredit pun bisa');

       Gotoxy (21,21); write (char(73),char(110),char(100),char(97),char(107),char(97),
       ' ',char(66),char(97),char(114),char(111),char(100),char(121),
       ' XI MM 1 © Hak Cipta 2017');
       Gotoxy (35,23); Write ('VERSI 1.10');
       Gotoxy (15,18); Write ('Apakah anda ingin melihat penawaran kami ? (Y/T): '); Readln (c);
       UNTIL
       (c in ['Y','y']);
       END;

BEGIN
REPEAT
clrscr;
Gotoxy (27,5); Write ('Metode pembayaran kami : ');
Gotoxy (30,7); Write ('1. Metode Tunai');
Gotoxy (30,9); Write ('2. Metode Kredit');
Gotoxy (21,21); write (char(73),char(110),char(100),char(97),char(107),char(97),
' ',char(66),char(97),char(114),char(111),char(100),char(121),
' XI MM 1 © Hak Cipta 2017');
BEGIN
REPEAT
Gotoxy (27,12); Write ('Silakan pilih metode (1/2) : '); readln (pilih);
UNTIL
(pilih in [1..2]);
end;
clrscr;
case pilih of
1: begin
   tunai;
   end;
2: begin
   kredit;
   end;
end;
Gotoxy (27,25); Write ('Mau Coba Lagi? (Y/T) : '); Readln (lagi);
UNTIL
(lagi in ['T','t']);
end;
end;

2:     begin
       BEGIN
       REPEAT
       clrscr;
       Gotoxy (36,2); Write ('MAOSPATI MOTOR');
       Gotoxy (25,5); Write ('Easy, Fast, and Efficient Service');
       Gotoxy (17,7); Write ('We sell hi-quality motorbike with affordable price.');
       Gotoxy (35,11); Write ('- Cash Ready');
       Gotoxy (35,13); Write ('- Credit Ready');

       Gotoxy (23,21); write (char(73),char(110),char(100),char(97),char(107),char(97),
       ' ',char(66),char(97),char(114),char(111),char(100),char(121),
       ' XI MM 1 © Copyright 2017');
       Gotoxy (37,23); Write ('VER. 1.10');
       Gotoxy (23,18); Write ('Do you want to see our offers ? (Y/N): '); Readln (d);
       UNTIL
       (d in ['Y','y']);
       END;

BEGIN
REPEAT
clrscr;
Gotoxy (29,5); Write ('Our Payment Methods : ');
Gotoxy (32,7); Write ('1. Cash Method');
Gotoxy (32,9); Write ('2. Credit Method');
Gotoxy (23,21); write (char(73),char(110),char(100),char(97),char(107),char(97),
' ',char(66),char(97),char(114),char(111),char(100),char(121),
' XI MM 1 © Copyright 2017');
BEGIN
REPEAT
Gotoxy (26,12); Write ('Please Select Method (1/2) : '); readln (pilih);
UNTIL
(pilih in [1..2]);
end;
clrscr;
case pilih of  
1: begin
   cash;
   end;
2: begin
   credit;
   end;
end;
Gotoxy (30,25); Write ('Try Again? (Y/N) : '); Readln (again);
UNTIL
(again in ['N','n']);
end;
end;
end;
end.