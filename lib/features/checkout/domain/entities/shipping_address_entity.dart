class ShippingAddressEntity {
  String? fullName, email, address, city, country, phone, aptSuite;
  ShippingAddressEntity({
    this.fullName,
    this.email,
    this.address,
    this.city,
    this.country,
    this.phone,
    this.aptSuite,
  });

  @override
  String toString() {
    return '$fullName,$email,$phone,$address,$country,$city,$address,$aptSuite';
  }
}
