import 'package:flutter/material.dart';
import '../api_service.dart';
import 'package:appwrite/models.dart';

class TicketListScreen extends StatefulWidget {
  @override
  _TicketListScreenState createState() => _TicketListScreenState();
}

class _TicketListScreenState extends State<TicketListScreen> {
  final ApiService apiService = ApiService();
  late Future<List<Document>> futureTickets;

  @override
  void initState() {
    super.initState();
    futureTickets = apiService.fetchTickets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ticket List'),
      ),
      body: FutureBuilder<List<Document>>(
        future: futureTickets,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var ticket = snapshot.data![index].data;
                return ListTile(
                  title: Text(ticket['event_name']),
                  subtitle: Text('Price: ${ticket['ticket_price']} - Buyer: ${ticket['buyer_name']}'),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
