import 'package:freezed_annotation/freezed_annotation.dart';

part 'cinema.freezed.dart';
part 'cinema.g.dart';

@freezed
class Cinema with _$Cinema {
  const factory Cinema(
      {required int id,
      required String name,
      required String brand,
      required List<Studio> studios}) = _Cinema;
  factory Cinema.fromJson(Map<String, dynamic> json) => _$CinemaFromJson(json);
}

@freezed
class Studio with _$Studio {
  const Studio._();
  const factory Studio(
      {required int id,
      required String code,
      required int capacity,
      required int row,
      required int column,
      required String price}) = _Studio;
  factory Studio.fromJson(Map<String, dynamic> json) => _$StudioFromJson(json);
  String getPrice() {
    RegExp regex = RegExp(r'([.]*0)(?!.*\d)');
    String formated = price.replaceAll(regex, '');
    return 'Rp $formated';
  }
}
