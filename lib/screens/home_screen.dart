import 'package:flutter/material.dart';
import 'package:flutter_application_1/Router/app_routes.dart';
import 'package:flutter_application_1/models/models.dart';
import 'package:flutter_application_1/theme/app_theme.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return  Scaffold(
      appBar: AppBar(
        title: const Text ('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) =>  ListTile(
          leading: Icon(menuOptions[index].icon, color: AppTheme.primary,),
          title: Text(menuOptions[index].name),
          onTap: () {
            
            // final route = MaterialPageRoute(
            //  builder: (context) => const ListView1Screen()
            // );

            // Navigator.push(context, route);

            Navigator.pushNamed(context, menuOptions[index].route);


          },
        ), 
        separatorBuilder: ( _, __ ) => const Divider(), 
        itemCount: AppRoutes.menuOptions.length
      )
    );
  }
}