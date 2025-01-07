# Submission1-ML_Dev_Ops-Prediksi Tingkat Stres pada Manusia
Nama: Khamdan Annas Fakhryza

Username dicoding: khamdan-fakhryza

![human resources problems](https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1617766026/m1tpdhifol4xqwxquds4.jpg)

[Sumber Gambar](https://drive.google.com/file/d/1A0N8LXDorJVSPVdc6oLDNy2OMyGcPyi2/view?usp=drive_link)

| | Deskripsi |
| ----------- | ----------- |
| Dataset | [Human Stress Prediction](https://drive.google.com/file/d/1A0N8LXDorJVSPVdc6oLDNy2OMyGcPyi2/view?usp=drive_link) |
| Masalah | SStres merupakan respons individu, baik secara fisik maupun emosional (mental/psikis), terhadap perubahan lingkungan yang memerlukan penyesuaian. Meskipun stres adalah bagian yang wajar dan penting dalam kehidupan, jika intensitasnya tinggi dan berlangsung lama, dapat berdampak negatif pada kesehatan. |
| Solusi machine learning | Mendeteksi stres dalam kehidupan sehari-hari seseorang bisa menjadi tantangan. Oleh karena itu, dengan memanfaatkan machine learning, kita dapat mengidentifikasi apakah seseorang mengalami stres hanya berdasarkan tulisan mereka di media sosial. |
| Metode pengolahan | Dalam proyek Human Stress Prediction, terdapat tujuh fitur, namun hanya fitur teks dan label yang akan digunakan. Fitur lainnya akan dihapus, dan data akan dibagi menjadi data pelatihan dan evaluasi dengan rasio 80:20. Selain itu, semua teks dalam fitur akan diubah menjadi huruf kecil, dan label akan dikonversi menjadi format integer. |
| Arsitektur model | Model yang digunakan adalah model embedding, yang terdiri dari layer vektorisasi, diikuti oleh layer embedding dengan dimensi embedding sebesar 16. Selanjutnya, terdapat layer AveragePooling1D untuk menangani data berbentuk teks, diikuti oleh dua layer dense dengan 64 dan 32 neuron, menggunakan fungsi aktivasi ReLU dan sigmoid untuk klasifikasi dua label. Fungsi loss yang diterapkan adalah binary_crossentropy, dengan optimizer Adam dan metrik BinaryAccuracy. |
| Metrik evaluasi | Metrik evaluasi yang digunakan mencakup ExampleCount, AUC, False Positives, True Positives, False Negatives, True Negatives, dan Binary Accuracy. |
| Performa model | Hasil evaluasi model menunjukkan AUC sebesar 82%, dengan jumlah contoh sebanyak 575, Binary Accuracy sebesar 75%, dan loss sebesar 1.364. Model ini menghasilkan 68 False Negatives, 75 False Positives, 201 True Negatives, dan 231 True Positives. Meskipun model yang telah dibangun menunjukkan hasil, masih ada ruang untuk perbaikan, karena Binary Accuracy masih di bawah 80%. |
