import 'package:material_ui/material_ui.dart';

void main() {
  runApp(MaterialApp(home: Home(),
  ),
  );
}

class Home extends StatefulWidget {
  const new({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController nota1Controller = TextEditingController();
  TextEditingController nota2Controller = TextEditingController();
  TextEditingController nota3Controller = TextEditingController();
  TextEditingController nota4Controller = TextEditingController();

  String _infoText = "Informe a primeira nota";
 

  void _resetFields(){
    nota1Controller.text = "";
    nota2Controller.text = "";
    nota3Controller.text = "";
    nota4Controller.text = "";
    
    setState(() {
      _infoText = "Informe suas quatro notas: ";
    });
  }

  void _calcular(){
    setState(() {
      double nota1 = double.parse(nota1Controller.text);
      double nota2 = double.parse(nota2Controller.text);
      double nota3 = double.parse(nota3Controller.text);
      double nota4 = double.parse(nota4Controller.text);
      double media = (nota1 + nota2 + nota3 + nota4) / 4;

      if (media <= 5){
        _infoText = "Você tirou R. Precisa estudar muito!";
      }else if (media >= 6 && media <= 8){
        _infoText = "Você tirou B. Precisa estudar um pouco mais!";
      }else {
        _infoText = "Você tirou MB. Foi aprovado com excelência!";
      }
    });
  }

    @override
  void dispose() {
    nota1Controller.dispose();
    nota2Controller.dispose();
    nota3Controller.dispose();
    nota4Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de Média"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 5, 136, 243),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _resetFields,
          ),

        ],
      ),

      backgroundColor: const Color.fromARGB(255, 175, 209, 236),

      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[

            Icon(
              Icons.school,
              size: 140.0,
              color: Colors.blue,
            ),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Nota 1",
                labelStyle: TextStyle(color: Colors.blue),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 25.0),
              controller: nota1Controller,
            ),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Nota 2",
                labelStyle: TextStyle(color: Colors.blue),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 25.0),
              controller: nota2Controller,
            ),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Nota 3",
                labelStyle: TextStyle(color: Colors.blue),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 25.0),
              controller: nota3Controller,
            ),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Nota 4",
                labelStyle: TextStyle(color: Colors.blue),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 25.0),
              controller: nota4Controller,
            ),

            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),

              child: SizedBox(
                height: 40.0,

                child: ElevatedButton(
                  onPressed: _calcular,

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),

                  child: Text(
                    "Calcular Média",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
            ),

            Text(
              _infoText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 22.0,
              ),
            ),

          ],
        ),
      ),
    );
  }
}