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


   ====================================================================================

   Memulai Automation Website

1. Buat folder automation kalian (atau bisa download repo ini)

2. Masuk ke folder (boleh lewat terminal editor / cmd)

3. Jalankan command
   'cucumber --init'

4. Akan terdapat folder baru berupa
   features                         | Untuk menaruh file test case kita (gherkin) dengan ektension .feature
   features/step_definitions        | Untuk menaruh file step dari test case kita dengan ekstension .rb
   features/support                 | Untuk menaruh file2 yg mendukung proses jalannya automation (env.rb, hook.rb, dll)
   features/support/env.rb          | File yg support automation kita (setup driver, setup library, dll)

5. Masuk ke folder features, lalu buat file test case pertama kita
   'login_berhasil.feature'

6. Didalam file test case, tulis dengan menerapkan bdd gherkin. Contoh :
   Feature: Login
    Scenario: Ini Login Berhasil
		Given User ada di halaman login
		When User masukin email password benar
        Then User berhasil login
   Untuk referensi bisa mengikuti darisini : https://cucumber.io/docs/gherkin/reference/

7. Setelah membuat file test case, jalankan command cucumber + nama file feature
   -> Perlu dicatat untuk menjalankan command ini, posisi kita harus berada di luar folder feature, sehingga command menjadi
      'cucumber ./features/login_berhasil.feature'
   -> Jika kita masuk ke folder features terlebih dahulu, lalu menjalankan command 'cucumber login_berhasil.feature' dia akan error
   -> Jika kita sudah punya banyak file test case dan langsung ingin menjalankan semua test case tersebut, langsung hit command
      'cucumber'

8. Sampai step ini kita akan mendapatkan beberapa warning di terminal. Warning ini karena step2 dari test case yg kita hit masih kosong
   -> Copy hasil dari warning tersebut dari Given sampai akhir Then (Berikut contoh yg di copy)
   Given('User ada di halaman login') do
    pending # Write code here that turns the phrase above into concrete actions
   end
   When('User masukin email password benar') do
     pending # Write code here that turns the phrase above into concrete actions
   end
   Then('User berhasil login') do
     pending # Write code here that turns the phrase above into concrete actions
   end
   -> Lalu buat file didalam folder 'step_definitions' dengan ekstensi '.rb' dan copy step2 diatas ke file tersebut
   -> Untuk penamaan file step bebas, disesuaikan dengan nama test case juga boleh
   -> Disini penulis menamakan file dengan nama test case ditambah '_step' dibelakangnya, sehingga menjadi
      'features/step_definition/login_berhasil_step.rb'
   -> Setelah step di copy, baru kita memulai kodingan untuk automation nya

9. Setup library dengan menambahkan 'require namagem' pada file env.rb
   -> Jika ragu, dapat mengikuti isi file 'env.rb' pada repo ini

10. Set driver dan browser menggunakan framework capybara pada file env.rb
    -> Capybara sendiri merupakan framework yang mendukung automation pada ruby
    -> Untuk setting driver dan browser, dapat dengan syntax
       Capybara.default_driver = :selenium
       Capybara.register_driver :selenium do |app|
        Capybara::Selenium::Driver.new(app, :browser => :chrome)
       end
    -> Untuk setup link dan windows (Contoh terdapat di file hook.rb)
       Capybara.app_host = 'https://my-v2-staging.pawoon.com/'
       Capybara.javascript_driver = :chrome
       page.driver.browser.manage.window.maximize
    -> file hook.rb sendiri ditambahkan secara manual. Bertindak sebagai autolistener
    -> Untuk referensi lebih lanjut, dapat melalui referensi : https://github.com/teamcapybara/capybara

11. Tinggal koding2 dan jalankan test case dengan step nomor 7. Selamat mencoba guys!!!!

