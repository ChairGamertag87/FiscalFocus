import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  final events = [
    {
      "account": "Account 1",
      "owner" : "Chair",
      "sold" : "138.37€",
      "avatar" : "money_bag",
    },
    {
      "account": "Account 2",
      "owner" : "Chair_mom",
      "sold" : "4836.23€",
      "avatar" : "money_bag",
    },
    {
      "account": "Account 3",
      "owner" : "Sierra",
      "sold" : "666.66€",
      "avatar" : "money_bag",
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index){
            final event = events[index];
            final account = event['account'];
            final owner = event['owner'];
            final sold = event['sold'];
            final avatar = event['avatar'];

            return Card(
              child: ListTile(
                leading: Image.asset("assets/images/$avatar.png"),
                title: Text('$account'),
                subtitle: Text("Owner : $owner, Sold : $sold"),
                trailing: const Icon(Icons.more_vert),
                isThreeLine: true,
              ),
            );
          }
      ),
    );
  }
}



