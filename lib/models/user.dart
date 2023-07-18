class User {
  final int id;
  final String nome;
  final String numero;
  final String favorito;
  final String email;
  final String? url_avatar;

  const User({
    required this.id,
    required this.nome,
    required this.numero,
    required this.favorito,
    required this.email,
    this.url_avatar,
  });
}
