domains
A,B,nama= string
angka = integer

predicates
nondeterm merk(nama)
nondeterm produk(nama,nama)
nondeterm kamera(nama,angka)
nondeterm ram(nama,angka)
nondeterm baterai(nama,angka)
nondeterm harga(nama,angka)
nondeterm run
nondeterm jawaban(nama,nama,angka,angka,angka,angka)

clauses
merk("iphone").
merk("samsung").
merk("lenovo").
merk("xiaomi").
merk("vivo").
merk("nokia").

produk("iphone","iphone 5s").
produk("iphone","iphone 6").
produk("iphone","iphone 7").
produk("samsung","S5").
produk("samsung","S6").
produk("samsung","S7").
produk("lenovo","A600").
produk("lenovo","K2").
produk("lenovo","P2").
produk("xiaomi","redmi note 3").
produk("xiaomi","mi4").
produk("xiaomi","mi5").
produk("vivo","V3").
produk("vivo","Y2").
produk("vivo","Y5").
produk("nokia","5500").
produk("nokia","N3").
produk("nokia","N6").

kamera("iphone 5s",6).
kamera("iphone 6",9).
kamera("iphone 7",12).
kamera("s5",7).
kamera("s6",9).
kamera("s7",14).
kamera("A600",5).
kamera("K2",5).
kamera("P2",6).
kamera("redmi note 3",6).
kamera("mi4",10).
kamera("mi5",16).
kamera("V3",16).
kamera("Y2",10).
kamera("Y5",11).
kamera("5500",1).
kamera("N3",6).
kamera("N6",12).

ram("iphone 5s",1).
ram("iphone 6",2).
ram("iphone 7",3).
ram("s5",2).
ram("s6",3).
ram("s7",5).
ram("A600",2).
ram("K2",2).
ram("P2",3).
ram("redmi note 3",3).
ram("mi4",3).
ram("mi5",5).
ram("V3",5).
ram("Y2",3).
ram("Y5",3).
ram("5500",0).
ram("N3",2).
ram("N6",3).

baterai("iphone 5s",2800).
baterai("iphone 6",2900).
baterai("iphone 7",2900).
baterai("s5",2900).
baterai("s6",3000).
baterai("s7",3000).
baterai("A600",2700).
baterai("K2",2900).
baterai("P2",2900).
baterai("redmi note 3",4000).
baterai("mi4",2900).
baterai("mi5",3000).
baterai("V3",4000).
baterai("Y2",4100).
baterai("Y5",3500).
baterai("5500",750).
baterai("N3",2900).
baterai("N6",3000).

harga("iphone 5s",3000000).
harga("iphone 6",6000000).
harga("iphone 7",10000000).
harga("s5",3800000).
harga("s6",6000000).
harga("s7",11000000).
harga("A600",2850000).
harga("K2",3000000).
harga("P2",3200000).
harga("redmi note 3",2200000).
harga("mi4",2500000).
harga("mi5",3000000).
harga("V3",4000000).
harga("Y2",2500000).
harga("Y5",2200000).
harga("5500",650000).
harga("N3",1500000).
harga("N6",2500000).

jawaban(A,B,C,D,E,F):-
		merk(A),
		produk(B,_),
		kamera(C,_),
		ram(D,_),
		baterai(E,_),
		harga(F,_).

run:-
write("Masukan Merk Hp = "),readln(A),nl,
write("Masukan Produk Hp = "),readint(B,AB),nl,
write("Masukan Besaran MP Kamera = "),readint(C,_),nl,
write("Masukan Besaran Ram = "),readint(D,_),nl,
write("Masukan Kapasitas Baterai = "),readint(E,_),nl,
write("Masukan Harga Hp = "),readint(F,_),nl,
%write("Hp yang cocok untuk anda adalah : ",)
jawaban(A,B,_,C,_,D,_,E,_,F,_).

goal
run.







