class AccountEntity {
  String? id;
  String? email;
  String? password;
  String? user;
  String? lastName;
  String? firstName;
  bool? deleted;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  AccountEntity({
    this.id,
    this.email,
    this.password,
    this.user,
    this.lastName,
    this.firstName,
    this.deleted,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  AccountEntity copyWith({
    String? id,
    String? email,
    String? password,
    String? user,
    String? lastName,
    String? firstName,
    bool? deleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) =>
      AccountEntity(
        id: id ?? this.id,
        email: email ?? this.email,
        password: password ?? this.password,
        user: user ?? this.user,
        lastName: lastName ?? this.lastName,
        firstName: firstName ?? this.firstName,
        deleted: deleted ?? this.deleted,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
      );
}
