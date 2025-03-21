import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text("Tela de Contato"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: const Text(
                'Entre em Contato',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Column(
                spacing: 14,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.phone),
                      SizedBox(width: 8),
                      Text('Telefone: (83) 96969-6969'),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.email),
                      SizedBox(width: 8),
                      Text('Email: email-Imaginario@gmail.com'),
                    ],
                  ),
                  const Text(
                    'Endereço: Rua fictícia, n° 666, João Pessoa (PB)',
                  ),
                  TextFormField(
                    maxLines: null,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 130),
                      hintText: 'Insira o comentário',
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Enviar Mensagem',
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
