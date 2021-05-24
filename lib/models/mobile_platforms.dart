class Platform {
  final int id;
  final String name;
  final String imagePath;
  final String status;
  final String dateTime;

  Platform({
    this.id,
    this.name,
    this.imagePath,
    this.status,
    this.dateTime,
  });

  static List<Platform> fetchAll() {
    return [
      Platform(
        id: 1,
        name: 'Stanbic Bank',
        imagePath: 'assets/images/Stanbic.png',
        status: 'Cash Deposit',
        dateTime: '01/03/2021 | 09:30 am',
      ),
      Platform(
          id: 2,
          name: 'MTN Mobile Money',
          imagePath: 'assets/images/MTN.png',
          status: 'Cash Withdrawal',
          dateTime: '01/03/2021 | 09:30 am'),
      Platform(
        id: 1,
        name: 'National Service Scheme',
        imagePath: 'assets/images/NSS.png',
        status: 'Registration Fee',
        dateTime: '01/03/2021 | 09:30 am',
      ),
      Platform(
        id: 1,
        name: 'AliExpress',
        imagePath: 'assets/images/Ali.png',
        status: 'Online Purchase',
        dateTime: '01/03/2021 | 09:30 am',
      ),
    ];
  }

  static Platform fetchByID(int locationID) {
    List<Platform> platform = Platform.fetchAll();
    for (var i = 0; i < platform.length; i++) {
      if (platform[i].id == locationID) {
        return platform[i];
      }
    }
    return null;
  }
}
