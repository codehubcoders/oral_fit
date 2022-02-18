class Tokens {
  String? accessToken;
  String? refreshToken;

  Tokens({ this.accessToken, this.refreshToken });

  factory Tokens.fromJson(Map<String, dynamic> json) => Tokens(
    accessToken: json['accessToken'] ?? '',
    refreshToken: json['refreshToken'] ?? '',
  );
}
