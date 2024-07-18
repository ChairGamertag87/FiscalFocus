import 'package:flutter/material.dart';
 
class AddAccountPage extends StatefulWidget {
  const AddAccountPage({super.key});

  @override
  State<AddAccountPage> createState() => _AddAccountPageState();
}

class _AddAccountPageState extends State<AddAccountPage> {

  final _formKey = GlobalKey<FormState>();

  final accountNameControlleur = TextEditingController();
  final ownerNameControlleur = TextEditingController();
  final soldNameControlleur = TextEditingController();


  @override
  void dispose() {
    super.dispose();

    accountNameControlleur.dispose();
    ownerNameControlleur.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Form(
        key: _formKey,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Account Name',
                    hintText: 'The name of your account',
                    border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return "You must complete this Field";
                    }
                    return null;
                  },
                  controller: accountNameControlleur,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Account Owner',
                      hintText: 'The name of the account owner',
                      border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return "You must complete this Field";
                    }
                    return null;
                  },
                  controller: ownerNameControlleur,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Account Sold',
                      hintText: 'Sold of the account',
                      border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return "You must complete this Field";
                    }
                    return null;
                  },
                  controller: soldNameControlleur,
                ),
              ),
              SizedBox(
                width: double.infinity, 
                height: 50,
                child: ElevatedButton(
                    onPressed: (){
                      if (_formKey.currentState!.validate()){
                        final accountName = accountNameControlleur.text;
                        final ownerName = ownerNameControlleur.text;

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Account initialization..."))
                        );
                        FocusScope.of(context).requestFocus(FocusNode());
                      }
                    },
                    child: Text("Create")
                ),
              )
            ],
          )
      ),
    );
  }
}

