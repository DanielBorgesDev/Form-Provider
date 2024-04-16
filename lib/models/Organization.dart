// ignore: file_names
class Organization {
  String? organizationName;
  String? address;
  String? organizationPhone;
  String? organizationCep;

  Organization(
      {this.organizationName,
      this.address,
      this.organizationPhone,

  Organization copyWith({required String address}) {}

  Organization copyWith({required String organizationName}) {}
      this.organizationCep});

  Organization copyWithOrganization({
    String? organizationName,
    String? address,
    String? organizationPhone,
    String? organizationCep,
  }) {
    return Organization(
      organizationName: organizationName ?? this.organizationName,
      address: address ?? this.address,
      organizationPhone: organizationPhone ?? this.organizationPhone,
      organizationCep: organizationCep ?? this.organizationCep,
    );
  }
}
