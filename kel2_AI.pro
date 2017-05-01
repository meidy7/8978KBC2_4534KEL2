domains
nama = string
harga = integer
predicates
run - nondeterm ()
produk(nama) - nondeterm (o)
ram(nama,nama) - nondeterm (i,i)
ada(nama,harga,nama) - nondeterm (o,i,i)
harga(nama,harga) - nondeterm (o,i)
nondeterm jenis(nama,symbol)

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

ada(B,A,C):-harga(B,A),ram(B,C).

	run:-
	write("masukan harga "),nl,
	readint(A),nl,
	write("masukan RAM "),nl,
	readln(C),nl,
	ada(B,A,C),
	write("HP yang cocok untuk anda adalah ",B),
	nl.

%%%%%%%%%%%%
jawaban("IPHONE"):-
	harga("iphone",5000000),ram(iphone,"320MB"),kamera(iphone,"2MP")
goal
run.