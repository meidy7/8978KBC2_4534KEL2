domains
nama = string
predicates
run - nondeterm ()
merk(nama) - nondeterm (i)
ada(symbol) - nondeterm (i)
clauses
merk("samsung").
merk("iphone").
merk("lenovo").
merk("Nokia").
merk("xiaomi").

ada(A):-merk(A),write("ada").

	run:-
	write("masukan spesifikasi "),nl,
	readln(A),ada(A),
	nl.
goal
run.