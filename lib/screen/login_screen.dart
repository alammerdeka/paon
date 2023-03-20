part of 'screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    header() {
      return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'PAON!',
                style: largeBold.copyWith(
                    fontSize: MediaQuery.of(context).size.width / 5),
              ),
              Text(
                'Resep Andalan Ibu',
                style: medium.copyWith(
                    fontSize: MediaQuery.of(context).size.width / 30,
                    letterSpacing: 8),
              ),
            ]),
      );
    }
    body() {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 50,
                  child: Center(
                      child: Icon(
                    Icons.alternate_email,
                    color: Colors.white,
                  )),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  flex: 6,
                  child: Container(
                    height: 50,
                    child: TextFormField(
                        decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: medium,
                      enabledBorder: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    )),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 50,
                  child: Center(
                      child: Icon(
                    Icons.lock,
                    color: Colors.white,
                  )),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 6,
                child: Container(
                  height: 50,
                  child: TextFormField(
                      decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: medium,
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
         GestureDetector(
           onTap: (){

           },
           child:  Container(
           width: double.infinity,
           height: 50,
           child: Center(child:Text('Sign In', style: medium.copyWith(color: Colors.white),)),
           decoration: BoxDecoration(
               color: Colors.black, borderRadius: BorderRadius.circular(10)),
         ),)
        ],
      );
    }
    return Scaffold(
        body: Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Center(
        child: ListView(
          children: [
            header(),
            SizedBox(
              height: 20,
            ),
            body(),
          ],
        ),
      ),
    ));
  }
}
