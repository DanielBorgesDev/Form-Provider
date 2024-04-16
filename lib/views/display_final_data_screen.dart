import 'package:app_provider/providers/organization_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';

class DisplayFinalDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    final organization =
        Provider.of<OrganizationProvider>(context).organization;

    return Scaffold(
      appBar: AppBar(
        title: Text('Fomulario final'),
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
            Text(
                'Nome da organização: ${organization.organizationName ?? ''} '),
            Text('Endereço da organização: ${organization.address ?? ''} '),
            Text(
                'Telefone da organização: ${organization.organizationPhone ?? ''} '),
            Text('CEP da organização: ${organization.organizationCep ?? ''} '),
          ],
        ),
      ),
    );
  }
}
