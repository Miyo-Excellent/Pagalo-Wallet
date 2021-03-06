class ApiPath {
  static final ApiPath _ = new ApiPath._internal();

  factory ApiPath() => _;

  ApiPath._internal();

  final String _firebaseDatabaseTransfers =
      'https://corda-wallet-development-8b41e.firebaseio.com/transfers';

  final String _firebaseDatabaseTransfersQrs =
      'https://corda-wallet-development-8b41e.firebaseio.com/transfers/qrs.json';

  final String _firebaseDatabaseReceivers =
      'https://corda-wallet-development-8b41e.firebaseio.com/receivers';

  final String _firebaseDatabaseReceiversQrs =
      'https://corda-wallet-development-8b41e.firebaseio.com/receivers/qrs.json';

  final String _firebaseToke = 'AIzaSyCiDIXPhSRGb7gV2PXCf2ZaKzTe3ZbW4j4';

  final String _signInWithPassword =
      'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword';

  final String _signUp =
      'https://identitytoolkit.googleapis.com/v1/accounts:signUp';

  final String _getUser =
      'https://identitytoolkit.googleapis.com/v1/accounts:lookup';

  String get firebaseToke => _firebaseToke;

  String get signInWithPassword => _signInWithPassword;

  String get signUp => _signUp;

  String get getUser => _getUser;

  String get firebaseDatabaseTransfers => _firebaseDatabaseTransfers;

  String get firebaseDatabaseTransfersQrs => _firebaseDatabaseTransfersQrs;

  String get firebaseDatabaseReceivers => _firebaseDatabaseReceivers;

  String get firebaseDatabaseReceiversQrs => _firebaseDatabaseReceiversQrs;
}
