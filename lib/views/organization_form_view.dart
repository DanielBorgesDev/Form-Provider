import 'package:app_provider/models/organization.dart';
import 'package:app_provider/views/display_final_data_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/organization_provider.dart';

class OrganizationFormView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  'Cadastro da Organização',
                  style: TextStyle(color: Colors.white, fontSize: 32.0),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 54, 54, 54),
      body: SingleChildScrollView(
        // Envolver o conteúdo em SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Consumer<OrganizationProvider>(
            builder: (context, organizationProvider, _) {
              return Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 27, 27, 27),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration:
                        const InputDecoration(labelText: 'Nome da Organização', labelStyle: TextStyle(color: Colors.white)),
                    onChanged: (value) {
                      organizationProvider.updateOrganization(
                          organizationProvider.organization.organizationName
                              as Organization);
                    },
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        labelText: 'Endereço da Organização', labelStyle: TextStyle(color: Colors.white)),
                    onChanged: (value) {
                      organizationProvider.updateOrganization(
                          organizationProvider.organization.organizationCep
                              as Organization);
                    },
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        labelText: 'Telefone da Organização', labelStyle: TextStyle(color: Colors.white)),
                    onChanged: (value) {
                      organizationProvider.updateOrganization(
                          organizationProvider.organization.organizationPhone
                              as Organization);
                    },
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration:
                        const InputDecoration(labelText: 'CEP da Organização', labelStyle: TextStyle(color: Colors.white)),
                    onChanged: (value) {
                      organizationProvider.updateOrganization(
                          organizationProvider.organization.organizationCep
                              as Organization);
                    },
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DisplayFinalDataScreen(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 0, 0)),
                    ),
                    child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text('Salvar', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 16.0)),
                    ),
                   ),
                  ),
                ],
               )
              );
            },
          ),
        ),
      ),
    );
  }
}
