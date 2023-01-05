class FeatureNotSupport {
  final String message;

  const FeatureNotSupport(this.message);

  @override
  String toString() => "PlatformNotSupport: $message";
}
