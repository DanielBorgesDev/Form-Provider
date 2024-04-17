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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          title: Text(''),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(16.0), 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Formulario Final',
                  style: TextStyle(color: Colors.white, fontSize: 32.0),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 54, 54, 54),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 27, 27, 27),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome: ${user.firstName ?? ''} ', style: TextStyle(color: Colors.white, fontSize: 18.0)),
            Text('Ultimo Nome: ${user.lastName ?? ''} ', style: TextStyle(color: Colors.white, fontSize: 18.0)),
            Text('Email: ${user.email ?? ''}', style: TextStyle(color: Colors.white, fontSize: 18.0)),
            Text('Titulo: ${user.title ?? ''}', style: TextStyle(color: Colors.white, fontSize: 18.0)),
            Text('Telefone: ${user.phone ?? ''}', style: TextStyle(color: Colors.white, fontSize: 18.0)),
            Text('Assunto da ideia: ${user.subjectIdea ?? ''}', style: TextStyle(color: Colors.white, fontSize: 18.0)),
            Text('Descrição da ideia: ${user.descriptionOfIdea ?? ''}', style: TextStyle(color: Colors.white, fontSize: 18.0)),
            Text(
                'Nome da organização: ${organization.organizationName ?? ''} ', style: TextStyle(color: Colors.white, fontSize: 18.0)),
            Text('Endereço da organização: ${organization.address ?? ''} ', style: TextStyle(color: Colors.white, fontSize: 18.0)),
            Text(
                'Telefone da organização: ${organization.organizationPhone ?? ''} ', style: TextStyle(color: Colors.white, fontSize: 18.0)),
            Text('CEP da organização: ${organization.organizationCep ?? ''} ', style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ],
        ),
       ),
      ),
     ),
    );
  }
}
