all: clean hello.exec

hello.exec: hello.hs
	ghc -o hello.exec --make hello.hs
	echo "Pacheco" | ./hello.exec Jose Andres 1 2

fmt:
	hindent *.hs

clean:
	rm -rf *.exec *.hi *.o
