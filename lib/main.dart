import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SumTwoNumbers(),
    );
  }
}

class SumTwoNumbers extends StatefulWidget {
  @override
  _SumTwoNumbersState createState() => _SumTwoNumbersState();
}

class _SumTwoNumbersState extends State<SumTwoNumbers> {
  // Controladores para los campos de texto
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();

  // Variable para almacenar el resultado
  double _result = 0;

  // Función para realizar la suma
  void _sumNumbers() {
    // Convertir los valores de texto a double
    double num1 = double.tryParse(_num1Controller.text) ?? 0;
    double num2 = double.tryParse(_num2Controller.text) ?? 0;

    setState(() {
      _result = num1 + num2;
    });
  }

  void _restNumbers() {
    // Convertir los valores de texto a double
    double num1 = double.tryParse(_num1Controller.text) ?? 0;
    double num2 = double.tryParse(_num2Controller.text) ?? 0;

    setState(() {
      _result = num1 - num2;
    });
  }

  void _mulNumbers() {
    // Convertir los valores de texto a double
    double num1 = double.tryParse(_num1Controller.text) ?? 0;
    double num2 = double.tryParse(_num2Controller.text) ?? 0;

    setState(() {
      _result = num1 * num2;
    });
  }

  void _divNumbers() {
    // Convertir los valores de texto a double
    double num1 = double.tryParse(_num1Controller.text) ?? 0;
    double num2 = double.tryParse(_num2Controller.text) ?? 0;

    setState(() {
      _result = num1 / num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sumar dos números'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Primer campo de texto
            TextField(
              controller: _num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 1'),
            ),
            // Segundo campo de texto
            TextField(
              controller: _num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 2'),
            ),
            SizedBox(height: 20),
            // Botón para realizar la suma
            ElevatedButton(
              onPressed: _sumNumbers,
              child: Text('Sumar'),
            ),

                        ElevatedButton(
              onPressed: _restNumbers,
              child: Text('Resta'),
            ),

            ElevatedButton(
              onPressed: _mulNumbers,
              child: Text('Multiplicacion'),
            ),

            ElevatedButton(
              onPressed: _divNumbers,
              child: Text('Division'),
            ),

            SizedBox(height: 20),
            // Mostrar el resultado
            Text(
              'Resultado: $_result',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

