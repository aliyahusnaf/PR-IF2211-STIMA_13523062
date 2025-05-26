# PR-IF2211-STIMA\_13523062

### Aliya Husna Fayyaza

**13523062**

---

## Deskripsi Tugas

Tugas ini mengimplementasikan penyelesaian **Traveling Salesman Problem (TSP)** menggunakan pendekatan **Dynamic Programming (DP)** dalam bahasa **Ruby**.

---

## Traveling Salesman Problem (TSP)

Traveling Salesman Problem (TSP) adalah salah satu masalah optimisasi kombinatorial terkenal di mana:

* Diberikan sejumlah kota dan jarak antar kota, lalu ingin dicari rute perjalanan **paling pendek** yang:
  1. Berawal dari satu kota,
  2. Mengunjungi semua kota **sekali saja**,
  3. Kembali ke kota asal.

---

## Dynamic Programming

Dynamic Programming (DP) adalah salah satu startegi algoritma yang memecah masalah besar menjadi submasalah yang lebih kecil dan menyimpan hasilnya (memoization) agar tidak dihitung ulang.
Pada TSP, DP membantu mengurangi kompleksitas dari $O(n!)$ (brute force) menjadi $O(n^2 \cdot 2^n)$ menggunakan **bitmask** untuk mewakili subset kota yang sudah dikunjungi.

---

## Struktur Program

* `src/tsp.rb` → script utama untuk menghitung TSP dengan DP.
* `test/input.txt` (contoh) → berisi input jumlah kota dan matriks jarak antar kota.

---

## Format File Input

File input:

```
n
w11 w12 w13 ... w1n
w21 w22 w23 ... w2n
...
wn1 wn2 wn3 ... wnn
```

Contoh:

```
4
0 10 15 20
10 0 35 25
15 35 0 30
20 25 30 0
```

---

## Cara Menjalankan

1⃣ Pastikan Ruby terinstall:

```bash
ruby -v
```

2⃣ Jalankan program:

```bash
ruby tsp.rb
```

3⃣ Masukkan nama file input saat diminta:

```
Masukkan nama file input:
test/input1.txt
```

---

## Testing

### Contoh Testcase 1

```
4
0 10 15 20
10 0 35 25
15 35 0 30
20 25 30 0
```

Expected minimum cost: **80**

---

### Contoh Testcase 2

```
3
0 5 9
5 0 10
9 10 0
```

Expected minimum cost: **24**

---

### Contoh Testcase 3

```
5
0 3 1 5 8
2 0 4 7 3
3 4 0 2 6
6 3 5 0 1
7 5 4 2 0
```

Expected minimum cost: **11**

---

Screenshot output dapat dilihat di test/output.png

## Author

Aliya Husna Fayyaza
13523062
