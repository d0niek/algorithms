# Bash scripts for algorithms testing 

How to start
------------
Ściągnij repozytorium i wypakuj je w dowolnym miejscu. W razie potrzeby zedytuj plik **template.cpp** według własnego uznania.

Z poziomu konsoli znajdując się w folderze z plikami wydaj polecenie
```sh
$ ./start.sh path/to/app app_name
```
Utworzy ono taką strukturę klatalogów
```sh
$ tree path
path
└── to
    └── app
        └── app_name
            ├── app_name.cpp
            └── tests
                ├── test0.in
                └── test0.out
```

W tym momencie w wybranym przez siebie edytorze przystąp do edycji pliku **path/to/app/app_name/app_name.cpp**

# Compile
Kiedy skończysz edytować plik skompiluj go wydając polecenie
```sh
$ ./comp.sh path/to/app app_name
```
Jeśli nie będzie błędów kompilacji zostanie utwórzony plik wykonywalny **path/to/app/app_name/app_name**

# Testing
W folderze **tests** znajdują się pliki testowe **test0.in** (dane wejściowe) oraz **test0.out** (oczekiwany rezultat po wykonaniu programu). Jeśli chcesz dodać więcej testów utwórz w folderze pary plików ***.in** oraz ***.out**
```sh
$ touch path/to/app/app_name/tests/test1.in
$ touch path/to/app/app_name/tests/test1.out
$ touch path/to/app/app_name/tests/moj_test.in
$ touch path/to/app/app_name/tests/moj_test.out
$ tree path
path
└── to
    └── app
        └── app_name
            ├── app_name.cpp
            └── tests
                ├── moj_test.in
                ├── moj_test.out
                ├── test0.in
                ├── test0.out
                ├── test1.in
                └── test1.out
```
po czym wypełnij je odpowiednimi danymi wejściowymi i wyjściowymi.

Kiedy pliki testowe są już gotowe uruchom polecenie
```sh
$ ./test.sh path/to/app app_name
```
Polecenie to uruchomi napisany przez Ciebie program z każdym testem wejściowym ***.in**, zapisze rezultat do pliku **path/to/app/app_name/out/\*.out** i porówna go z oczekiwanym rezultatem.

Jednocześnie dla każdego testu zostanie również wypisany czas wykonania programu oraz ilość pamięci jaką zużył podaną w Kb.
