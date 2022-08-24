cabal:
	cabal run scheme48 $(INPUT)

hello.exec: clean hello.hs
	ghc -o hello.exec --make hello.hs
	echo "Pacheco" | ./hello.exec Jose Andres 1 2

fmt:
	hindent *.hs app/*.hs

clean:
	rm -rf *.exec *.hi *.o
