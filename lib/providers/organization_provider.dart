import 'package:flutter/material.dart';
import '../models/organization.dart';

class OrganizationProvider extends ChangeNotifier {
  Organization _organization = Organization();

  Organization get organization => _organization;

  void updateOrganization(Organization newOrganization) {
    _organization = newOrganization;
    notifyListeners();
  }
}
