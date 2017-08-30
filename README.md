# Bash scripts for algorithms testing

How to start
------------
Ściągnij repozytorium i wypakuj je w dowolnym miejscu. W razie potrzeby zedytuj plik szablonu **template.\*** według własnego uznania.

Z poziomu konsoli znajdując się w folderze z plikami wydaj polecenie:
```sh
$ ./start path/to/program extension
```
gdzie `extension` to rozszerzenie jednego z szablonów.
Polecenie to utworzy taką strukturę klatalogów:
```sh
$ tree path
path
└── to
    └── program
        ├── app
        ├── main.extension
        └── tests
            ├── test0.in
            └── test0.out
```

W tym momencie w wybranym przez siebie edytorze przystąp do edycji pliku **path/to/program/main.extension**

# Compile
Jeśli zdecydowałeś się na pisanie programu w języku C++ to przed jego uruchomieniem musisz go skompliować. Wydaj polecenie:
```sh
$ ./comp path/to/program
```
Jeśli nie będzie błędów kompilacji zostanie utwórzony plik wykonywalny **path/to/program/app**

# Testing
W folderze **path/to/program/tests** znajdują się pliki testowe **test.in** (dane wejściowe) oraz **test.out** (oczekiwany rezultat po wykonaniu programu). Jeśli chcesz dodać więcej testów utwórz w folderze pary plików **\*.in** oraz **\*.out**
```sh
$ touch path/to/program/tests/test1.in
$ touch path/to/program/tests/test1.out
$ touch path/to/program/tests/moj_test.in
$ touch path/to/program/tests/moj_test.out
$ tree path
path
└── to
    └── program
        ├── app
        ├── main.extension
        └── tests
            ├── moj_test.in
            ├── moj_test.out
            ├── test.in
            ├── test.out
            ├── test1.in
            └── test1.out
```
po czym wypełnij je odpowiednimi danymi wejściowymi i wyjściowymi.

Kiedy pliki testowe są już gotowe uruchom polecenie:
```sh
$ ./test path/to/program
```
Polecenie to uruchomi napisany przez Ciebie program z każdym testem wejściowym **\*.in**, zapisze rezultat do pliku **path/to/program/out/\*.out** i porówna go z oczekiwanym rezultatem.

Jednocześnie dla każdego testu zostanie wypisany czas wykonania programu oraz ilość pamięci [Kb] jaką zużył.
