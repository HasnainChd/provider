import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management1/provider/home_page_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.indigoAccent,
        title: const Center(child: Text('Provider'),),),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ChangeNotifierProvider<HomePageProvider>(
              create: (context) => HomePageProvider(),
              child: Consumer<HomePageProvider>(
                builder: (context, provider, child) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(provider.eligibilityMsg.toString(),
                          style: TextStyle(color: provider.isEligible == true
                              ? Colors.green
                              : Colors.red,),),
                          TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Enter your age to check eligibility'
                            ),
                            onChanged: (val){
                              provider.checkEligibility(int.parse(val));
                            },
                          )
                    ],
                  );
                },
              )
          ),
        ),
      ),
    );
  }
}
