domains
nama = string
angka = integer

predicates
nondeterm run
nondeterm nama(nama,nama)
nondeterm produk(nama)
nondeterm kamera(nama,nama,angka)
nondeterm ram(nama,nama,angka)
nondeterm baterai(nama,nama,angka)
nondeterm harga(nama,nama,angka)
nondeterm jawaban(angka,angka,angka,angka,nama)

clauses
produk("samsung").
produk("iPhone").
produk("lenovo").
produk("Nokia").
produk("xiaomi").
nama("iPhone","iPhone 6 plus").
nama("iPhone","iPhone 7").
nama("samsung","iphone7").
nama("samsung","iphone7").
nama("lenovo","iphone7").

kamera("iPhone","iPhone 6 plus",8).
kamera("iPhone","iPhone 7",12).

ram("iPhone","iPhone 6 plus",1).
ram("iPhone","iPhone 7",2).

baterai("iPhone","iPhone 6 plus",2915).
baterai("iPhone","iPhone 7",1960).

harga("iPhone","iPhone 6 plus",5500000).
harga("iPhone","iPhone 7",8500000).

jawaban(A,B,C,D,HP):-harga(NAMA,HP,A),
		kamera(NAMA,HP,B),
		ram(NAMA,HP,C),
		baterai(NAMA,HP,D).

	run:-
	write("masukan harga "),nl,
	readint(A),nl,
	write("masukan KAMERA "),nl,
	readint(B),nl,
	write("masukan RAM "),nl,
	readint(C),nl,
	write("masukan BATERAI "),nl,
	readint(D),nl,
	jawaban(A,B,C,D,HP),
	write("HP yang cocok untuk anda adalah ",HP),
	nl.

goal
run.