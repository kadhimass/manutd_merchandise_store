class Merchandise {
  // Encapsulation
  final String _name;
  final double _price;
  final String _imageUrl;
  final String _description;

  // Constructor
  Merchandise(this._name, this._price, this._imageUrl, this._description);

  // Getter
  String get name => _name;
  double get price => _price;
  String get imageUrl => _imageUrl;
  String get description => _description;

  // Polymorphism
  String displayInfo() {
    return 'Nama: $_name, Harga: Rp${_price.toStringAsFixed(2)}';
  }
}
