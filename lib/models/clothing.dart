import 'package:manutd_merchandise_store/models/merchandise.dart';

class Clothing extends Merchandise {
  final List<String> _sizes;
  final String _material;

  Clothing(
    super.name,
    super.price,
    super.imageUrl,
    super.description,
    this._sizes,
    this._material,
  );

  List<String> get sizes => _sizes;
  String get material => _material;

  @override
  String displayInfo() {
    return 'Nama: $name, Ukuran: ${_sizes.join(', ')}, Bahan: $_material, Harga: Rp${price.toStringAsFixed(2)}';
  }
}
