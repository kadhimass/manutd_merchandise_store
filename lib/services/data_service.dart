import 'package:manutd_merchandise_store/models/merchandise.dart';
import 'package:manutd_merchandise_store/models/clothing.dart';

class DataService {
  static List<Merchandise> getMerchandiseList() {
    return [
      // Kategori Pakaian
      Clothing(
        'Home Jersey 23/24',
        1500000.00,
        'assets/images/HomeJersey23_24.jpg',
        'Jersey home resmi KING EMY musim 2023/2024.',
        ['S', 'M', 'L', 'XL'],
        'Polyester',
      ),
      Clothing(
        'Away Jersey 23/24',
        1500000.00,
        'assets/images/jersey_away.jpg',
        'Jersey tandang KING EMYU berwarna hijau gelap dengan desain garis yang khas.',
        ['S', 'M', 'L', 'XL'],
        'Polyester',
      ),

      // Kategori Aksesori
      Merchandise(
        'Manchester United Scarf',
        150000.00,
        'assets/images/scarf.jpg',
        'Syal rajut tradisional dengan warna merah-putih-hitam, cocok untuk dipakai di stadion.',
      ),
      Merchandise(
        'Mug EMYU',
        75000.00,
        'assets/images/Mug.jpg',
        'MUG dengan logo klub, cocok untuk menonton KING EMYU di rumah.',
      ),
      Merchandise(
        'Topi Emyu',
        100000.00,
        'assets/images/Topi.jpg',
        'Topi dengan bordir logo klub di bagian depan dan strap yang bisa disesuaikan.',
      ),
    ];
  }
}
