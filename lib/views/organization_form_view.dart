import 'package:app_provider/models/organization.dart';
import 'package:app_provider/views/display_final_data_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/organization_provider.dart';

class OrganizationFormView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Organização'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Consumer<OrganizationProvider>(
            builder: (context, organizationProvider, _) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration:
                        const InputDecoration(labelText: 'Nome da Organização'),
                    onChanged: (value) {
                      organizationProvider.updateOrganizationField(
                          organizationName: value);
                    },
                  ),
                  TextField(
                    decoration: const InputDecoration(
                        labelText: 'Endereço da Organização'),
                    onChanged: (value) {
                      organizationProvider.updateOrganizationField(
                          address: value);
                    },
                  ),
                  TextField(
                    decoration: const InputDecoration(
                        labelText: 'Telefone da Organização'),
                    onChanged: (value) {
                      organizationProvider.updateOrganizationField(
                          organizationPhone: value);
                    },
                  ),
                  TextField(
                    decoration:
                        const InputDecoration(labelText: 'CEP da Organização'),
                    onChanged: (value) {
                      organizationProvider.updateOrganizationField(
                          organizationCep: value);
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DisplayFinalDataScreen(),
                        ),
                      );
                    },
                    child: const Text('Salvar'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
