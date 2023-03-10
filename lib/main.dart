import 'package:flutter/material.dart';
import 'package:flutter_cms/home.dart';
import 'package:flutter_cms/login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*Flutter'da, context, Widget ağacı içinde bir widget'in konumunu ve özelliklerini tanımlayan bir nesnedir. 
    Context nesnesi, widget'ler arasında veri akışını sağlamak ve widget ağacındaki widget'leri arayıp bulmak için kullanılır.
    Context nesnesi, bir widget'in oluşturulduğu yerdeki BuildContext sınıfından türetilmiştir. 
    Bu nedenle, BuildContext ve context ifadeleri birbirinin yerine kullanılabilir.
    Context, genellikle widgetlerin içindeki diğer widgetleri aramak ve erişmek için kullanılır.
    Örneğin, bir butonun tıklanma olayını işlemek ve bu olayın ardından bir uyarı penceresi açmak isterseniz, 
    context kullanarak uyarı penceresi bileşenini görüntüleyebilirsiniz.
    Ayrıca, Navigator widget'ının push veya pop yöntemlerini kullanarak farklı sayfalara geçiş yaparken de context nesnesi kullanılır.
    Context ayrıca, ThemeData, MediaQuery, Scaffold ve Theme gibi widget'lerin erişebildiği,
    uygulamanın genelinde paylaşılan verileri içeren bir InheritedWidget'i de içerir.
    Bu InheritedWidget, uygulamanın herhangi bir yerindeki widget'ler tarafından erişilebilir ve kullanılabilir.*/

    return MaterialApp(
      debugShowCheckedModeBanner: false, //hata ayıklama başlığı kaldırıldı (Debug)
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}