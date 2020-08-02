program JualBeliBarangBekas;

uses crt;
const
	Nmaks = 1000;

type
	barangSecond = record
		kodeBarangSecond : Integer;
		jenisBarangSecond : String;
		namaBarangBekas : String;
		namaPembeliBarangSecond : String;
		tanggalPembelianBarangSecond: string;
		lokasiBarangSecond : string;
		hargaBarangSecond : integer;
		jumlahBarangSecond : integer;
	end;

type
	listBarangSecond = array[1..Nmaks] of barangSecond;
var
	B : listBarangSecond;
	k : Integer;
	nama : string;
	lokasi : string;



procedure TampilSemua(B : listBarangSecond);
var
	i: Integer;
begin
	i := 1;
	while (i <= k ) do
	begin
			clrscr;
			writeln('Kode BarangSecond : ',B[i].kodeBarangSecond);
			writeln(' Jenis BarangSecond : ',B[i].jenisBarangSecond);
			writeln(' Nama BarangBekas  : ',B[i].namaBarangBekas);
			writeln(' Nama Pembeli BarangSecond  : ',B[i].namaPembeliBarangSecond);
			writeln(' lokasi BarangSecond    : ',B[i].lokasiBarangSecond);
			writeln(' Tanggal Pembelian BarangSecond    : ',B[i].tanggalPembelianBarangSecond);
			writeln(' Harga BarangSecond  : ',B[i].hargaBarangSecond);
			writeln(' Jumlah BarangSecond : ',B[i].jumlahBarangSecond);
			readln;
			i:=i+1;
	end;
	
end;

procedure InsertionSortAscending(var B : listBarangSecond; N : integer);
var 
	pass,i : Integer;
 temp : BarangSecond;
 begin
		pass := 1;
		while pass <= N-1 do
		begin
				i := pass + 1;
				temp := B[i];
				while ((i > 1) and (temp.jumlahBarangSecond < B[i-1].jumlahBarangSecond)) do
				begin
						B[i] := B[i-1];
						i := i - 1;
				end;
				B[i] := temp;
				pass := pass +1;
		end;
 end;

procedure InsertionSortDescending(var B : listBarangSecond; N : integer);
var 
	pass,i : Integer;
	temp: BarangSecond;
 begin
		pass := 1;
		while pass <= N-1 do
		begin
				i := pass + 1;
				temp := B[i];
				while ((i > 1) and (temp.jumlahBarangSecond > B[i-1].jumlahBarangSecond)) do
				begin
						B[i] := B[i-1];
						i := i - 1;
				end;
				B[i] := temp;
				pass := pass + 1;
		end;
 end;

procedure pilihInsertionSort(pilih : char);
begin
	case pilih of
						'0' : begin
							
						end;

						'1' : begin
							
						InsertionSortDescending(B,k);
						TampilSemua(B);
						readln;
						end;

						'2' : begin
						insertionSortAscending(B,k);
						TampilSemua(B);
						readln;

						end;
	end;
end;

procedure MenuInsertionSort;
var 
	n : Char;
begin
	clrscr;
	repeat
		repeat 
		Writeln('============================================================');
		Writeln('|        SILAHKAN ANDA CARI SESUAI PILIHAN                 |');
		Writeln('|             YANG ADA DI BAWAH INI !!                     |');
		Writeln('|             // INSERTION SORT//                          |');
		Writeln('|               *JUMLAH BARANG*                            |');
		writeln('============================================================');
		Writeln('|                                                          |');
		Writeln('|   1. URUT BERDASARKAN DESCENDING                         |');
		Writeln('|   2. URUT BERDASARKAN ASCENDING                          |');
		Writeln('|   0. KEMBALI                                             |');
		Writeln('|                                                          |');
		Writeln('============================================================');
		readln(n)
		until (n='0') or (n = '1') or (n= '2');
		pilihInsertionSort(n);
	until (n ='0');
end;

procedure SelectionSortAscending(var B: listBarangSecond; N : integer);
var 
pass, idxmin,i : integer;
temp : barangSecond;
begin
	pass := 1;
	while pass <= N-1 do
	begin
			idxmin := pass;
			i := idxmin + 1;
				while i <= N do
					begin
						if B[i].hargaBarangSecond < B[idxmin].hargaBarangSecond then
							begin
								idxmin:= i;
							end;
							i := i +1;
					end;
				temp := B[idxmin];
				B[idxmin] := B[pass];
				B[pass] := temp;
				pass := pass + 1;
	end;
end;


procedure SelectionSortDescending(var B: listBarangSecond; N : integer);
var 
pass, idxmax,i : integer;
temp : barangSecond;
begin
	pass := 1;
	while pass <= N-1 do
		begin
			idxmax := pass;
			i := idxmax + 1;
				while i <= N do
					begin
						if B[i].hargaBarangSecond > B[idxmax].hargaBarangSecond then
							begin
								idxmax:= i;
							end;
				i := i +1;
		end;
				temp := B[idxmax];
				B[idxmax] := B[pass];
				B[pass] := temp;
				pass := pass + 1;
		end;
		
end;



procedure pilihSelectionSort(pilih : char);
begin
	case pilih of
						'0' : begin
							
						end;

						'1' : begin
						SelectionSortDescending(B,k);
						TampilSemua(B);
						readln;
						end;

						'2' : begin
						SelectionSortAscending(B,k);
						TampilSemua(B);
						readln;
						end;
				end;
end;

procedure MenuSelectionSort();
var
	n : Char;
begin
	clrscr;
	repeat
		repeat 
		Writeln('============================================================');
		Writeln('|           SILAHKAN ANDA CARI SESUAI PILIHAN               |');
		Writeln('|              YANG ADA DI BAWAH INI !!                     |');
		Writeln('|               // SELECTION SORT//                         |');
		Writeln('|                *HARGA BARANGSECOND*                       |');
		writeln('============================================================');
		Writeln('|                                                           |');
		Writeln('|   1. URUT BERDASARKAN DESCENDING                          |');
		Writeln('|   2. URUT BERDASARKAN ASCENDING                           |');
		Writeln('|   0. KEMBALI                                              |');
		Writeln('|                                                           |');
		Writeln('============================================================');
		readln(n);
	until (n='0') or (n = '1') or (n= '2');
	pilihSelectionSort(n);
	until (n ='0');
end;

procedure pilihditampilanViewUrut(pilih : char);
begin
	case pilih of
						'0' : begin
							
						end;

						'1' : begin
							MenuSelectionSort;
						 end;

						'2' : begin
							MenuInsertionSort;
						end;
					end;
end;

procedure TampilanViewUrut();
var
n : Char;
begin
	repeat
		repeat 
		clrscr;
		Writeln('============================================================');
		Writeln('|         SILAHKAN ANDA CARI SESUAI PILIHAN                |');
		Writeln('|             YANG ADA DI BAWAH INI !!                     |');
		writeln('============================================================');
		Writeln('|                                                          |');
		Writeln('|   1. URUT BERDASARKAN SELECTION SORT                     |');
		Writeln('|   2. URUT BERDASARKAN INSERTION SORT                     |');
		Writeln('|   0. KEMBALI                                             |');
		Writeln('|                                                          |');
		Writeln('============================================================');
		readln(n);
		until (n='0') or (n = '1') or (n= '2');
		pilihditampilanViewUrut(n);
	until (n ='0');
end;
function cariBerdasarkanLokasiBarang(B: listBarangSecond; k : Integer; lokasi: string): Integer;
var 
	i : integer;
	ketemu: Boolean;
begin
	i := 1;
	ketemu := false;
	while ((i<= k ) and (not ketemu)) do
		begin
			if B[i].lokasiBarangSecond = lokasi then
				begin
						ketemu:= true;
				end
			else 
			begin
					i := i +1;
			end;
		end;

		if ketemu= true then
		begin
				cariBerdasarkanLokasiBarang:= i;
		end
		else
		begin
				cariBerdasarkanLokasiBarang:= -1;
		end;
	
end;

procedure BerhasilHapus;
	
	begin
		clrscr;
		Writeln('============================================================');
		Writeln('|                      HAPUS BERHASIL                      |');
		Writeln('============================================================');
		writeln;
		
	end;
procedure HapusData();
var
	temp: Integer;
	hapus : string;
	idxtemp : integer;
	i : integer;
	tempB : listBarangSecond;

begin
	writeln('masukkan data yang mau di-hapus = ');
	readln(hapus);
	temp := cariBerdasarkanLokasiBarang(B,k,hapus);
	if temp <> -1 then
	 begin
			idxtemp:= 0;
			i := 1;
			while i <= k do
					begin
							if i <> temp then
						   begin
							   	idxtemp:= idxtemp + 1;
								   tempB[idxtemp] := B[i];
					   	end;
					  	i:= i +1;
				 end;
				B:= tempB;
				k := k-1;
				BerhasilHapus;
				readln;
		end;
end; 
function  cariBerdasarkanNamaPembeli(B :listBarangSecond; k : integer; Nama : string): integer;
var
i: integer; 
ketemu :Boolean;
begin
	i := 1;
	ketemu := false;
	while ((i <= k ) and (not ketemu)) do
		begin
			if B[i].namaPembeliBarangSecond = Nama then
				begin
						ketemu:= true;
				end
			else 
			begin
					i := i +1;
			end;
		end;

		if ketemu then
		begin
				cariBerdasarkanNamaPembeli:= i;
		end
		else
		begin
				cariBerdasarkanNamaPembeli:= -1;
		end;
end;

procedure HasilCariLokasi(B : listBarangSecond ; lokasi : String);
	var 
	temp : integer;
begin
	temp := cariBerdasarkanLokasiBarang(B,k,lokasi);
	if(temp <> -1)then
	begin
			writeln(' Kode BarangSecond : ',B[temp].kodeBarangSecond);
			writeln(' Jenis BarangSecond : ',B[temp].jenisBarangSecond);
			writeln(' Nama BarangBekas  : ',B[temp].namaBarangBekas);
			writeln(' Nama Pembeli BarangSecond  : ',B[temp].namaPembeliBarangSecond);
			writeln(' lokasi BarangSecond    : ',B[temp].lokasiBarangSecond);
			writeln(' Tanggal Pembelian BarangSecond   : ',B[temp].tanggalPembelianBarangSecond);
			writeln(' Harga BarangSecond :  ',B[temp].hargaBarangSecond);
			writeln(' Jumlah BarangSecond : ',B[temp].jumlahBarangSecond);
	end
	else
	begin
		write('HARGA TIDAK DITEMUKAN');
	end;
end;

procedure HasilCariNama(B : listBarangSecond ; Nama : string);
	var 
	temp : integer;
begin
	temp := cariBerdasarkanNamaPembeli(B,k,nama);
	if(temp <> -1)then
	begin
			writeln('masukkan kodeBarangSecond  : ',B[temp].kodeBarangSecond);
			writeln(' Jenis BarangSecond  : ',B[temp].jenisBarangSecond);
			writeln(' Nama BarangSecond  : ',B[temp].namaBarangBekas);
			writeln(' Nama Pembeli BarangSecond  : ',B[temp].namaPembeliBarangSecond);
			writeln(' lokasi BarangSecond  : ',B[temp].lokasiBarangSecond);
			writeln(' Tanggal Pembelian BarangSecond  : ',B[temp].tanggalPembelianBarangSecond);
			writeln(' Harga BarangSecond : ',B[temp].hargaBarangSecond);
			writeln(' Jumlah BarangSecond : ',B[temp].jumlahBarangSecond);
	end
	else
	begin
		write('NAMA TIDAK DITEMUKAN');
	end;
end;



procedure PilihDitampilanViewCari(pilih : char);
begin
		case pilih of
						'0' : begin
							
						end;

						'1' : begin
							write('Masukan Nama Yang Ingin Dicari = '); readln(nama);
							HasilCariNama(B,nama);
							readln;
						end;

						'2' : begin
							write('Masukan Harga Yang Ingin Dicari = '); readln(lokasi);
							HasilCariLokasi(B,lokasi);
							readln;
						end;
			end;
end;


procedure TampilandiViewCari();
var
n : char;
begin
	clrscr;
	repeat
		repeat 
		clrscr;
		Writeln('============================================================');
		Writeln('|         SILAHKAN ANDA CARI SESUAI PILIHAN                |');
		Writeln('|              YANG ADA DI BAWAH INI !!                    |');
		writeln('============================================================');
		Writeln('|                                                          |');
		Writeln('|   1. CARI BERDASARKAN NAMA PEMBELI                       |');
		Writeln('|   2. CARI BERDASARKAN LOKASI BARANG                      |');
		Writeln('|   0. KEMBALI                                             |');
		Writeln('|                                                          |');
		Writeln('============================================================');
		readln(n);
	until (n='0') or (n = '1') or (n= '2');
	PilihDitampilanViewCari(n);
	until (n ='0');
end;

procedure EditData();
var 
	temp : integer;
	edit : string;
begin
	clrscr;
	writeln('Lokasi yang akan di-edit = ');
	readln(edit);
	temp := cariBerdasarkanLokasiBarang(B,k,edit); 
	if temp <> -1 then
		begin
			writeln('masukkan kodeBarangSecond : ');
			readln(B[temp].kodeBarangSecond);
			writeln(' Jenis BarangSecond : ');
			readln(B[temp].jenisBarangSecond);
			writeln(' Nama BarangBekas  : ');
			readln(B[temp].namaBarangBekas);
			writeln(' Nama Pembeli BarangSecond  : ');
			readln(B[temp].namaPembeliBarangSecond);
			writeln(' lokasi BarangSecond    : ');
			readln(B[temp].lokasiBarangSecond);
			writeln(' Tanggal Pembelian BarangSecond    : ');
			readln(B[temp].tanggalPembelianBarangSecond);
			writeln(' Harga BarangSecond 	:  	');
			readln(B[temp].hargaBarangSecond);
			writeln('Jumlah BarangSecond : ');
			readln(B[temp].jumlahBarangSecond);
		end;
end;

procedure PilihdiView(pilih : char);
begin
	case pilih of
						'0' : begin
						
						end;

						'1' : begin
							EditData;
						end;

						'2' : begin
							TampilanViewUrut;
						end;

						'3' : begin
						 TampilandiViewCari;
						end;

						'4' : begin
						 HapusData;
						end;
						'5' : begin
							TampilSemua(B);
						end;
		end;
end;

procedure TampilanView();
var 
	n : Char;
begin
	repeat
		repeat	
		clrscr;
		writeln('===============================================================');
		writeln('||                                                           ||');
		writeln('||               SELAMAT DATANG DI TAMPILAN MENU VIEW        ||');
		writeln('||                   SILAHKAN PILIH DIBAWAH INI!             ||');
		writeln('===============================================================');
		writeln('||                                                           ||');
		writeln('||   1. EDIT DATA                                            ||'); 
		writeln('||   2. URUT DATA                                            ||');
		writeln('||   3. CARI DATA                                            ||');
		writeln('||   4. HAPUS DATA                                           ||');
		writeln('||   5. LIHAT SEMUA DATA                                     ||');
		writeln('||   0. KEMBALI                                              ||');
		writeln('===============================================================');
		writeln;
		writeln('Masukan Angka Pada Menu View = ');
		readln(n);
		until (n='0') or(n='1') or (n='2') or (n='3') or (n='4') or (n='5');
		PilihdiView(n);
	until(n='0');
end;

procedure Gagal;
	
	begin
		clrscr;
		Writeln('============================================================');
		Writeln('|                      INPUT GAGAL                          |');
		Writeln('============================================================');
		writeln;
		
	end;

procedure Berhasil;
	
	begin
		clrscr;
		Writeln('============================================================');
		Writeln('|                      INPUT BERHASIL                      |');
		Writeln('============================================================');
		writeln;
		
	end;

procedure INSERTMengisi(var B : listBarangSecond; var k : Integer);
var 
x : barangSecond;
i,n : Integer;
begin
	 clrscr;
	  i := 1;
		Writeln('========================================================================');
		writeln('|                                                                      |');
		Writeln('|          SELAMAT ANDA TELAH MEMASUKI MENU ISI BARANG SECOND	        |');
		writeln('|                                                                      |');
		writeln('========================================================================');
		Writeln('|  HARAP PERHATIKAN KODE BARANG !!! :                                  |');
		writeln('========================================================================');
		writeln('|                                                                      |');
		writeln('|   PAKAIAN :      001                                                 |');
		writeln('|   BUKU :         002                                                 |');
		writeln('|   ELEKTRONIK :   003                                                 |');
		writeln('|                                                                      |');
		Writeln('========================================================================');
		writeln;
		write('masukkan data yang akan diisi ke  - ');
		readln(n);
		while ((i <= n ) and (i <= Nmaks)) do
		begin
			write ('masukkan kodeBarangSecond : ');
			readln(x.kodeBarangSecond);
			write (' Jenis BarangSecond : ');
			readln(x.jenisBarangSecond);
			write (' Nama BarangBekas  : ');
			readln(x.namaBarangBekas);
			write (' Nama Pembeli BarangSecond  : ');
			readln(x.namaPembeliBarangSecond);
			write (' lokasi BarangSecond    : ');
			readln(x.lokasiBarangSecond);
			write (' Tanggal Pembelian BarangSecond    : ');
			readln(x.tanggalPembelianBarangSecond);
			write (' Harga BarangSecond : ');
			readln(x.hargaBarangSecond);
			Write ('Jumlah BarangSecond : ');
			readln(x.jumlahBarangSecond);
			if ((x.kodeBarangSecond = 001) or (x.kodeBarangSecond= 002) or (x.kodeBarangSecond=003)) then
				begin
					k := k +1; 
					B[k] := x;
					Berhasil;
				end
			else
				begin
					Gagal;
				end;
			readln;
			i := i + 1;
		end;
end;

procedure pilihTampilanMenu(pilih : char);
begin
		case pilih of
						'0' : begin
						
						end;


						'1' : begin
							INSERTMengisi(B,k);
						end;

						'2' : begin
							TampilanView;
						end;

			end;
	
end;

procedure tampilanMenu ();
var
	n : char;
begin
	repeat
		repeat
		clrscr;
		writeln('===============================================================');
		writeln('||                                                           ||');
		writeln('||               SELAMAT DATANG DI PENYEDIA                  ||');
		writeln('||           PENJUALAN BARANG BEKAS BERKUALITAS              ||');
		writeln('||                    UD. SANTOSA JAYA                       ||');
		writeln('||                                                           ||');
		writeln('===============================================================');
		writeln('||                                                           ||');
		writeln('||  1.  INSERT                                               ||');
		writeln('||  2.  VIEW                                                 ||');
		writeln('||  0.  KELUAR                                               ||');
		writeln('||                                                           ||');
		writeln('===============================================================');
		writeln;
		writeln('Masukan Angka Pada Menu = ');
		readln(n);
		until (n='0') or(n='1') or (n='2');
		pilihTampilanMenu(n);
	until(n='0');
end;

procedure tampilanAwal ();
begin
	clrscr;

			writeln ('======================================================================');
			writeln ('||                                                                  ||');
			writeln ('||                    SELAMAT DATANG DI PENJUALAN                   ||');
			writeln ('||                     BARANG SECOND BERKUALITAS                    ||');
			writeln ('||                        UD. SENTOSA JAYA                          ||');
			writeln ('||                                                                  ||');
			writeln ('||                                                                  ||');
			writeln ('||                                                                  ||');
			writeln ('||                      created by BUDI NUGROHO                     ||');
			writeln('=======================================================================');
			writeln('                                                                       ');
			writeln('                             PRESS AND KEY.......                      ');
			writeln('                            ------------------                         ');
			readln;
end;

begin
	k :=0;
	tampilanAwal;
	tampilanMenu;
end.