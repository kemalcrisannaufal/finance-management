class Transaction {
  String? tipe;
  String? deskripsi;
  int? harga;
  String? tanggal;

  Transaction({this.tipe, this.deskripsi, this.harga, this.tanggal});

  Transaction.fromJson(Map<String, dynamic> json) {
    tipe = json['tipe'];
    deskripsi = json['deskripsi'];
    harga = json['harga'];
    tanggal = json['tanggal'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['tipe'] = tipe;
    data['deskripsi'] = deskripsi;
    data['harga'] = harga;
    data['tanggal'] = tanggal;
    return data;
  }
}
