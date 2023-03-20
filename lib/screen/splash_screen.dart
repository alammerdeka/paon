part of 'screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/login');
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.primaryColor,
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text('PAON!', style: largeBold.copyWith(fontSize: MediaQuery.of(context).size.width/5),),
          Text('Resep Andalan Ibu',style: medium.copyWith(fontSize: MediaQuery.of(context).size.width/30,letterSpacing: 8),),
        ]),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 30,
        child: Center(child: Text('Aplikasi Resep Masakan',style: mini,)),
      ),
    );
  }
}
