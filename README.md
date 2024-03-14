# LP1PROVIS2024C1

Program ini merupakan implementasi transaksi dalam proses pemesanan dan pembayaran pada sebuah salon kecantikan.

**PENJELASAN OOP**
Program memiliki 3 Class, yaitu class **Product**, **Cashier**, dan **Customer**.
1. Class Product, memiliki atribut sebagai berikut:
   - id
   - name
   - price
  Class ini merupakan kepunyaan class Cashier dan juga class Customer
3. Class Cashier, memiliki atribut sebagai berikut:
   - cashierName
   - productList
   - receivedMoney
  Atribut productList berbentuk list yang berisi data-data dari class Product. Hal ini merepresentasikan bahwa sebuah toko memiliki dagangan yang akan ditawarkan. Untuk atribut receivedMoney merupakan atribut yang akan menerima bayaran dari customer.
5. Class Customer
   - name
   - selectedProducts
   - wallet
  Atribut selectedProducts merepresentasikan bahwa seorang customer membeli suatu produk dagangan dari sebuah store. Pada program ini, customer akan memilih product yang ditawarkan. Lalu, untuk atribut wallet merupakan banyak uang yang ada pada customer, uang ini akan digunakan untuk melakukan pembayaran ke Cashier.

**PENJELASAN ASYNCHRONOUS**
Setiap customer memesan product, di waktu yang bersamaan cashier akan mencatat pesanan lalu ditampilkan pada display cashier. Lalu juga setiap product yang dipesan oleh customer, harganya akan teriterasi lalu ditampilkan di display.

**ALUR PROGRAM**
1. Mengisi data product terlebih dahulu secara static pada main dan ditampung pada list yang diberi nama list availableProducts
2. Mengisi data cashier juga secara statis pada main
3. Karena program datanya saya buat secara statis, selectedProducts yang akan dipilih oleh customer perlu dibikin terlebih dahulu sebelum mengisi data customer secara statis
4. Lalu masuk ke ``await cashier.takeOrder(customer)``
