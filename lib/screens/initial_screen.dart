import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/componets/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text("Tarefas"),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
              nome: 'Aprender Flutter',
              foto: "assets/images/dash.png",
              difilcudade: 5,
            ),
            Task(
              nome: 'Andar de Bike',
              foto: "assets/images/bike.webp",
              difilcudade: 1,
            ),
            Task(
              nome: 'Ler um Livro',
              foto: "assets/images/livro.jpg",
              difilcudade: 2,
            ),
            Task(
              nome: 'Meditar',
              foto: "assets/images/meditar.jpeg",
              difilcudade: 3,
            ),
            Task(
              nome: 'Jogar',
              foto: "assets/images/jogar.jpg",
              difilcudade: 4,
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
