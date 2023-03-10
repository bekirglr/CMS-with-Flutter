// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      /*Bu bileşen, çeşitli ekran boyutları ve oranları ile çalışan uygulamalarda ekranın herhangi bir kenarına göre 
      değişen kesintileri hesaba katarak, bileşenlerin içeriğini kaydırmak veya yeniden boyutlandırmak gibi 
      otomatik ayarlamalar yapar.*/

      child: Scaffold(
        /*Flutter'da Scaffold, tipik bir mobil uygulama için kullanılan temel bir bileşendir. 
        Scaffold bileşeni, uygulamanın üst kısmında bir Appbar ve alt kısmında bir altbilgi veya diğer ek bileşenlerle birlikte bir ana içerik alanını içerir.
        Buna ek olarak, Scaffold bileşeni, kullanıcıya navigasyon için bir Drawer bileşeni ekleyebilir.*/

        body: Container(
          margin: EdgeInsets.all(24),
          /*Flutter'da, EdgeInsets sınıfı, dört kenardan birine kadar simetrik veya farklı şekilde herhangi bir 
          kısıtlama eklemek için kullanılır. EdgeInsets, bir Widget'in kenarlarından belirli bir uzaklık bırakmak için 
          kullanılır.*/

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            /*Flutter'da mainAxisAlignment, bir widget'in içindeki alt widget'ların 
            dikey veya yatay eksende hizalanmasını belirlemek için kullanılan bir özelliktir.*/
            children: [
              _header(context),
              _inputField(context),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text(
          "Welcome",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text("Lorem dolor sit amet, consectetur adipiscing elit"),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: "Username",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.person)),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.key),
          ),
          obscureText: true,
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondActivity()));
          },
          child: Text(
            "Login",
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            backgroundColor: Colors.red,
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
        )
      ],
    );
  }

  _forgotPassword(context) {
    return TextButton(onPressed: () {}, child: Text("Forgot password?"));
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Dont have an account? "),
        TextButton(onPressed: () {}, child: Text("Sign Up"))
      ],
    );
  }
}

//Kullanı Bilgi Kontolünün sağlanacağı sınıf
class SecondActivity extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(
        child: Text('Go Back'),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}
