import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

class ApiService {
  Client client = Client();
  late Databases database;

  ApiService() {
    client
      .setEndpoint('https://cloud.appwrite.io/v1') // Endpoint Appwrite Cloud
      .setProject('66937910002920847bc0') // Project ID Anda
      .addHeader('X-Appwrite-Key', '10293796f8a91b96de4f909fe6f6d7575e29d80ea44a1b0d1eda6e45d78fbe005d349a4b2f9e3d7fc4feeee415d73d608491578a673be44de006e3c6bf8d82fc3f58c680fcfb464013cd7b427067d22a9512f88887f2e1b9530807cf36a9b50f9cbd73a12857b539b9bda187270b7017422a9d08b8231b8b25252ec4946486e5'); // API Key Anda

    database = Databases(client);
  }

  Future<List<Document>> fetchTickets() async {
    final response = await database.listDocuments(
      databaseId: '669379360002c4aaf7ed',
      collectionId: '6693a439001053b05721',
    );
    return response.documents;
  }

  Future<Document> fetchTicket(String documentId) async {
    final response = await database.getDocument(
      databaseId: '669379360002c4aaf7ed',
      collectionId: '6693a439001053b05721',
      documentId: documentId,
    );
    return response;
  }
}
