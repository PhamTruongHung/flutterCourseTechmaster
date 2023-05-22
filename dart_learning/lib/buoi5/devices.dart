import 'package:uuid/uuid.dart';

import 'manufacturer.dart';

class Device {
  String id;
  String name;

  final Manufacturer manufacturer;
  String osName;
  String firmwareName;
  Device({
    String? id,
    required this.name,
    required this.manufacturer,
    required this.osName,
    required this.firmwareName,
  }) : id = id ?? Uuid().v4();

  Device copyWith({
    String? id,
    String? name,
    Manufacturer? manufacturer,
    String? osName,
    String? firmwareName,
  }) {
    return Device(
      id: id ?? this.id,
      name: name ?? this.name,
      manufacturer: manufacturer ?? this.manufacturer,
      osName: osName ?? this.osName,
      firmwareName: firmwareName ?? this.firmwareName,
    );
  }

  @override
  String toString() {
    return 'Device(id: $id, name: $name, manufacturer: $manufacturer, osName: $osName, firmwareName: $firmwareName)';
  }
}
