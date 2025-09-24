import 'package:flutter/material.dart';
import 'package:manutd_merchandise_store/models/merchandise.dart';
import 'package:manutd_merchandise_store/models/clothing.dart';

class DetailPage extends StatelessWidget {
  final Merchandise merchandise;

  const DetailPage({super.key, required this.merchandise});

  @override
  Widget build(BuildContext context) {
    String additionalInfo = '';
    final bool isClothing = merchandise is Clothing;

    if (isClothing) {
      final clothingItem = merchandise as Clothing;
      // Tempat menyimpan informasi bahan
      additionalInfo = 'Bahan: ${clothingItem.material}';
    }

    return Scaffold(
      appBar: AppBar(title: Text(merchandise.name), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                merchandise.imageUrl,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              merchandise.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Harga: Rp${merchandise.price.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 20, color: Colors.green),
            ),
            const SizedBox(height: 20),
            Text(merchandise.description, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),

            // Cukup tampilkan daftar ukuran di sini
            if (isClothing)
              Text(
                'Ukuran Tersedia: ${(merchandise as Clothing).sizes.join(', ')}',
                style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),

            const SizedBox(height: 20),
            // Tampilkan informasi tambahan tanpa ukuran
            if (additionalInfo.isNotEmpty)
              Text(
                additionalInfo,
                style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),

            const SizedBox(height: 20),
            Text(
              'Info lengkap:\n${merchandise.displayInfo()}',
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
