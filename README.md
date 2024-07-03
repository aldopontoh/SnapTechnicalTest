# SnapTechnicalTest
Snap Technical Test

===========================================================================================================================

Halo guys, ini adalah hasil research automation menggunakan Ruby + Cucumber
Di dalam repo ini ada automation untuk Website dan Mobile
Pembuatan automation ini menggunakan OS Windows 11 dan Ruby 2.7
(Disarankan menggunakan Linux/Mac OS karena tutorial yg beredar kebanyakan menggunakan OS tersebut + Mac OS ngebutttt XDD)
Letsgoo

===========================================================================================================================

Prepare ruby :

1. Download dan install Code Editor sesuai seleramu
   -> Penulisan ini menggunakan Visual Studio Code

2. Download dan install Ruby
   Link : https://rubyinstaller.org/downloads/
   -> Automation ini dibuat dengan ruby versi 2.7 (disarankan mengikutin versi yg sama)
   -> Jika ingin menggunakan versi terupdate, perlu diperhatikan penulisan syntac serta versi gem2 yang nanti akan di install

3. Setting Environtment Variable Ruby
   How to : https://www.geeksforgeeks.org/environment-setup-in-ruby/#:~:text=Once%20you%20installed%20Ruby%20with,tab%20click%20on%20Environment%20Variables.
   - Cek ruby dengan menjalankan command pada terminal tanpa tanda kutip
     'Ruby -v'

4. Downlad driver browser
   -> Untuk google chrome, bisa menggunakan chromedriver (pastikan versi yang didownload sesuai dengan versi google chrome yg dipakai)
   link : https://chromedriver.chromium.org/downloads
   -> Setelah download, pindahkan file ke folder bin ruby
      'C:\Ruby25-x64\bin'
   -> Untuk mozilla firefox, bisa menggunakan geckodriver
   link : https://github.com/mozilla/geckodriver/releases
   -> Tapi penulis belum mencoba menggunakan mozilla firefox, baru menggunakan google chrome

5. Download repo dan Install gem
   -> Gem ibarat seperti library dan perlu kita install sesuai kebutuhan fitur yg akan kita gunakan
   -> Gem2 yang digunakan di dalam penulisan ini bisa diliat pada file Gemfile.rb
   -> Untuk install gem secara satuan, bisa menggunakan command dibawah
      'gem install cucumber' atau 'gem install appium_lib'. Gem yg terinstall adalah versi yg terbaru
   -> Jika ingin menginstall gem dengan versi spesifik bisa menggunakan command
      'gem install cucumber -v 7.1.0'
   -> Untuk menginstall semua gem yang ada di file Gemfile.rb secara langsung, bisa menggunakan command
      'bundle install'
      **Untuk bundle install, jalankan di dalam folder automation ini
   -> Untuk cek gem-gem yang sudah diinstall
      'gem list'
   -> Pada kondisi ini, seharusnya kita sudah bisa menggunakan automation website. Masuk pada folder Website dengan cmd, lalu
      jalankan perintah 'cucumber .\feaures\login_success.feature'
   -> Jika ingin membuat sendiri, lihat section "Memulai Automation Website"
