import 'package:material_ui/material_ui.dart';
 
void main() {
  runApp(const MyApp()
  );
}
 
// atalho para criar widget -> stless
class MyApp extends StatelessWidget {
  const new({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  void decrement(){
    setState((){ //é o método usado para atualizar o estado interno do componente e agendar uma nova renderização
      contador--;
    print(contador);
    });
  }
 
  void increment(){
    setState((){
      contador++;
    print(contador);
    });
  }

  bool get isEmpty => contador == 0;
  bool get isFull => contador == 18;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image.png"),
            fit: BoxFit.cover,
            ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
       
        children: [
          Text(
            isFull ? "Está lotado" : "Bem vindo!",
          style: TextStyle(
            fontSize: 50,
            color: Colors.red,
            fontWeight: FontWeight.w900,
          ),
          ),
          Text("Fique à vontade",
          style: TextStyle(
            fontSize: 35,
            color: Colors.redAccent,
            fontWeight: FontWeight.w700,
          ),
          ),
          Padding(padding: EdgeInsets.all(40),
          child: Text(
          contador.toString(), // Paramos aqui na aula dia 21/10 - pág 23
          style: TextStyle(
            fontSize: 100,
            color: Color.fromARGB(255, 4, 87, 154),
          ),
          ),
          ),
 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: isEmpty ? null : decrement,
              style: TextButton.styleFrom(
                backgroundColor:isEmpty ? Colors.blue.withValues(alpha: 0.2) : Colors.blue,
                fixedSize: const Size(100, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Text('Sair',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              )
              ),
 
              SizedBox(width: 32),
 
              TextButton(onPressed:isFull ? null : increment,
              style: TextButton.styleFrom(
                backgroundColor:isFull ? Colors.blue.withValues(alpha: 0.2) : Colors.blue,
                fixedSize: const Size(100, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                )
                ),
                child: Text('Entrar',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )
                ),
              ),
            ]
          )
        ],
        )
      )
    );
  }
}
 
// class HomePage extends StatelessWidget -> utilizamos o statelesswidget apenas para mostrar na tela, porém não atualiza {
//   HomePage({super.key});
 
//   int contador = 0;

//   void decrement(){
//     contador--;
//     print(contador);
//   }
 
//   void increment(){
//     contador++;
//     print(contador);
//   }
 
// //chamando container
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(

//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/image.png"),
//             fit: BoxFit.cover,
//             ),
//         ),

//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
       
//         children: [
//           Text("Bem vindo!",
//           style: TextStyle(
//             fontSize: 50,
//             color: Colors.red,
//             fontWeight: FontWeight.w900,
//           ),
//           ),
//           Text("Fique à vontade",
//           style: TextStyle(
//             fontSize: 35,
//             color: Colors.redAccent,
//             fontWeight: FontWeight.w700,
//           ),
//           ),
//           Padding(padding: EdgeInsets.all(40),
//           child: Text(
//           contador.toString(),
//           style: TextStyle(
//             fontSize: 100,
//             color: Color.fromARGB(255, 4, 87, 154),
//           ),
//           ),
//           ),
 
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextButton(onPressed: decrement,
//               style: TextButton.styleFrom(
//                 backgroundColor: Colors.blue,
//                 fixedSize: const Size(100, 100),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(24),
//                 ),
//               ),
//               child: Text('Sair',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 16,
//               ),
//               )
//               ),
 
//               SizedBox(width: 32),
 
//               TextButton(onPressed: increment,
//               style: TextButton.styleFrom(
//                 backgroundColor: Colors.blue,
//                 fixedSize: const Size(100, 100),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(24),
//                 )
//                 ),
//                 child: Text('Entrar',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 16,
//                 )
//                 ),
//               ),
//             ]
//           )
//         ],
//         )
//       )
//     );
//   }
// }