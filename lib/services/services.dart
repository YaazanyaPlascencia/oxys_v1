import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore database = FirebaseFirestore.instance;

Future <List> getEmployee() async{

  List employee = [];
  CollectionReference collectionReferenceEmployee = database.collection('employee');
  QuerySnapshot queryEmployee = await collectionReferenceEmployee.get();
  queryEmployee.docs.forEach((document) {
    employee.add(document.data());
  });
  return employee;
}
Future<void> addCard (String card) async{
  await database.collection('CardTitle').add({'NewCard': card});
}
Future<void> addCardDescription (String descriptionCard) async{
  await database.collection('descriptionCard').add({'NewCardDescription': descriptionCard});
}
Future<void> addRequirementDescription (String requirementDescription) async{
  await database.collection('requirementDescription').add({'NewRequirementDescription': requirementDescription});
}
Future<void> addContactName (String contactName) async{
  await database.collection('contactName').add({'NewName': contactName});
}
Future<void> addcontactLastName (String contactLastName) async{
  await database.collection('contactLastName').add({'NewLastName': contactLastName});
}
Future<void> addDepartment (String workDepartment) async{
  await database.collection('workDepartment').add({'NewDepartment': workDepartment});
}
Future<void> addRole (String workRole) async{
  await database.collection('workRole').add({'NewRole': workRole});
}
Future<void> addWorkPhone (String workPhone) async{
  await database.collection('workPhone').add({'NewPhone': workPhone});
}
Future<void> addWorkEmail (String workEmail) async{
  await database.collection('workEmail').add({'NewEmail': workEmail});
}
Future<void> addSiteName (String siteName) async{
  await database.collection('siteName').add({'newSiteName': siteName});
}
Future<void> addSiteDescription (String siteDescription) async{
  await database.collection('siteCoreBussines').add({'newSiteDescription': siteDescription});
}
Future<void> addcompanyName (String companyName) async{
  await database.collection('companyName').add({'newCompanyName': companyName});
}
Future<void> addcomanyDescription (String companyDescription) async{
  await database.collection('companyDescription').add({'newCompanyDescription': companyDescription});
}
Future <List> getSite() async{

  List site = [];
  CollectionReference collectionSiteName = database.collection('siteName');
  QuerySnapshot querySite = await collectionSiteName.get();
  querySite.docs.forEach((document) {
    site.add(document.data());
  });
  return site;
}