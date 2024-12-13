# mad_monika_todo_list_app

A new Flutter project.


This is a simple Flutter application demonstrating the **MVVM (Model-View-ViewModel)** design pattern. The app allows users to:
- View a list of tasks.
- Add a new task.
- Mark a task as complete.
- Delete a task.

Komponen MVVM:

*Model*

- Mewakili data dan business logic dari aplikasi.

- Memberikan data ke ViewModel dan menangani pembaruan atau perubahan dari ViewModel.

*View*

- UI layer dari aplikasi.

- Display data dari ViewModel dan user interactions.

Widget HeaderView, TaskListView, TaskInfoView, dan AddTaskView di aplikasi ini.

*ViewMode*

- Bertindak sebagai mediator antara Model dan View.

- handle logic UI dan menyediakan data untuk View.

*how to run the app*

- Flutter harus terinstal di perangkat Anda (Panduan instalasi Flutter).

- Android Studio atau VS Code (dengan ekstensi Flutter dan Dart).

- Emulator Android

*Langkah-Langkah Menjalankan*

Clone Repository:
Jika kode sumber dihosting di sistem kontrol versi seperti GitHub, clone repository-nya. Atau, tempatkan kode sumber dalam folder.

git clone https://github.com/username/repository-name.git
cd repository-name

Install Dependensi:
Jalankan perintah berikut untuk mengambil semua dependensi yang diperlukan:
flutter pub get

Jalankan Aplikasi:
Run app di emulator menggunakan perintah berikut:
flutter run

Akses Aplikasi:

Layar utama akan menampilkan TaskPage, di mana pengguna dapat mengelola tugas.

Floating Action Button dan komponen UI lainnya akan diperbarui secara dinamis berdasarkan logic app.

Catatan:

Pastikan emulator/perangkat berjalan sebelum menjalankan flutter run.

Gunakan flutter clean jika mengalami masalah saat membangun proyek.

*fix bugs*

Masalah Gradle:
Jika Anda mengalami masalah terkait versi Gradle atau Java, lihat tabel kompatibilitas dan pastikan Anda menggunakan versi Java yang benar untuk pengaturan Gradle Anda.

Hot Reload:
Gunakan r di terminal untuk melakukan hot reload aplikasi selama pengembangan untuk iterasi yang lebih cepat.

*reflections*
Melalui tugas ini, saya memperoleh pemahaman yang lebih dalam tentang pola arsitektur Model-View-ViewModel (MVVM) dan bagaimana pola ini membantu mantain clean code,cscalable, dan maintainable dalam aplikasi Flutter. Saya belajar bagaimana memisahkan concerns antara UI, business logic, dan data, sehingga memungkinkan pengaturan yang lebih baik dan pemeliharaan basis kode yang lebih mudah. Penggunaan kelas ChangeNotifier di ViewModel untuk mengelola state dan memberi tahu UI tentang perubahan yang terjadi sangat mendalam. Hal ini menyoroti pentingnya manajemen state dan bagaimana hal tersebut dapat ditangani secara efektif menggunakan paket Provider.
Salah satu hal yang paling penting adalah pentingnya batasan yang jelas antara komponen dalam struktur MVVM. Model merepresentasikan data mentah dan business logic, View hanya berfokus pada UI, dan ViewModel menangani interaksi di antara keduanya. Pemisahan yang jelas ini membuat code lebih mudah dinavigasi dan dipahami, dan juga memfasilitasi perubahan dan penambahan aplikasi.
Namun, saya menghadapi beberapa tantangan selama implementasi. Salah satu tantangannya adalah mengonfigurasi manajemen state dengan benar menggunakan paket Provider. Awalnya, saya mengalami masalah dengan View yang tidak diperbarui ketika state ViewModel berubah. Hal ini diselesaikan dengan memastikan bahwa saya mengatur ChangeNotifier dengan benar dan menggunakan widget Consumer untuk mendengarkan perubahan state di View. Tantangan lainnya adalah merancang struktur aplikasi untuk mengikuti pola MVVM secara ketat, yang membutuhkan perencanaan alur tugas yang cermat dan memastikan bahwa logika ditempatkan di ViewModel, bukan di View.
Secara keseluruhan, tugas ini merupakan pengalaman belajar yang luar biasa, dan membantu saya meningkatkan keterampilan saya dalam pengembangan Flutter dan manajemen state.

Translated with DeepL.com (free version)

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
