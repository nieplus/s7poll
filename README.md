# s7poll
Narzędzie do odczytu danych ze sterownika z wykorzystaniem protokołu SNAP7.

## Uruchomienie programu
Do kompilacji i uruchomienia programu wymagane jest SNAP7

Na systemach Debian/Ubuntu można je zainstalować za pomocą:

```bash
sudo apt install libsnap7-1 libsnap7-dev
```
Jeżeli pakiety libsnap7-1 lub libsnap7-dev nie są dostępne w domyślnych repozytoriach, należy dodać repozytorium PPA:
```bash
sudo add-apt-repository ppa:gijzelaar/snap7
sudo apt update
sudo sudo apt install libsnap7-1 libsnap7-dev
```

## Pomoc

Uruchomienie narzędzia
```
s7poll <ADRES IP> <PARAMETRY>
```
Przykład
```
s7poll 127.0.0.1 -db 107 -r 0 -s 2 -p 0 -i 10 -int -1
```

Parametr | Opis | Domyślnie
--- | --- | ---
adres IP | Adres IP PLC | ---
-h | Wyświetli pomoc | ---
-r | Rack | 0
-s | Slot | 1
-db | Numer bloku danych | 1
-p | Początkowy adres danych | 0
-i | Ilość danych do wyświetlenia | 5
-time | Czas między zapytaniami | 1000 (ms)
-1 | Odczyta dane z serwera tylko raz | ---
-int | Dane w postaci liczb całkowitych | ---
-float | Dane w postaci liczb zmiennoprzecinkowych | ---
-hex | Dane w systemie szesnastkowym | ---
-bin | Dane w systemie dwójkowym | ---
