import 'package:flutter/material.dart';
import 'package:manutd_merchandise_store/models/merchandise.dart';
import 'package:manutd_merchandise_store/pages/detail_page.dart';
import 'package:manutd_merchandise_store/pages/login_page.dart';
import 'package:manutd_merchandise_store/services/data_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _logout(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Merchandise> merchandiseList = DataService.getMerchandiseList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Merchandise Tersedia'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: merchandiseList.length,
        itemBuilder: (context, index) {
          final item = merchandiseList[index];

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(merchandise: item),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      item.imageUrl,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Rp${item.price.toStringAsFixed(0)}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.chevron_right, color: Colors.grey),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _logout(context),
        backgroundColor: Colors.red[900],
        child: const Icon(Icons.logout, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
