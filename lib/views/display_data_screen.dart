import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';

class DisplayDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;

    return Scaffold(
      appBar: AppBar(
        title: Text('Dados do Usuário'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome: ${user.firstName ?? ''} '),
            Text('Ultimo Nome: ${user.lastName ?? ''} '),
            Text('Email: ${user.email ?? ''}'),
            Text('Titulo: ${user.title ?? ''}'),
            Text('Telefone: ${user.phone ?? ''}'),
            Text('Assunto da ideia: ${user.subjectIdea ?? ''}'),
            Text('Descrição da ideia: ${user.descriptionOfIdea ?? ''}'),
          ],
        ),
      ),
    );
  }
}
