import 'package:app_provider/views/organization_form_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';

class DisplayDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;

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
                  'Preencha o Cadastro',
                  style: TextStyle(color: Colors.white, fontSize: 32.0),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 54, 54, 54),
      body: SingleChildScrollView(
        child: Center(
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
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrganizationFormView(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 0, 0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text('Continuar o cadastro', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 16.0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
