import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exemple/providers/user_provider.dart';


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
            Text('Nome: ${user?.firstName ?? ''} ${user?.lastName ?? ''}'),
            Text('Email: ${user?.email ?? ''}'),
            Text('Título: ${user?.title ?? ''}'),
            Text('Telefone: ${user?.phone ?? ''}'),
            Text('Assunto da Ideia: ${user?.subjectIdea ?? ''}'),
            Text('Descrição da Ideia: ${user?.descriptionOfIdea ?? ''}'),
          ],
        ),
      ),
    );
  }
}
