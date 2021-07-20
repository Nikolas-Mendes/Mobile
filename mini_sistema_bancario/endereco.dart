class Endereco {
  String _street;
  String _number;
  String _district;
  String _city;
  String _state;
  String _cep;

  Endereco(
    this._street,
    this._number,
    this._district,
    this._city,
    this._state,
    this._cep
  );

  String get street => this._street;
  String get number => this._number;
  String get district => this._district;
  String get city => this._city;
  String get state => this._state;
  String get cep => this._cep;

  set street(String street) {
    this._street = street;
  }

  set number(String number) {
    this._number = number;
  }

 set district(String district) {
    this._district = district;
  }

 set city(String city) {
    this._city = city;
  }

  set state(String state) {
    this._state = state;
  }

  set cep(String cep) {
    this._cep = cep;
  }

  // @override
  // String toString() {
  //   return "Address: \nStreet: ${this._street}\nNumber: ${this._number}\nCity: ${this._city}";
  // }
}