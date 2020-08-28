import 'package:flutter/material.dart';
import 'package:probexjoci/dados.dart';
import 'package:probexjoci/widgets/produto.dart';

// essa é a pagina inicial!


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xffe7defe),



      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            SizedBox(height: 25,),
            Text(
              "Anti-Plágio",
              style: Theme.of(context).textTheme.display1.apply(
                fontWeightDelta: 2,
                color: Colors.black,),),
            SizedBox(height: 25,),

            Text("Saiba como se proteger!",
                style:Theme.of(context).textTheme.body2.copyWith(
                    height: .9)),
            SizedBox(height: 25,),




            GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: .8 // tamanho quadrados
              ),

              itemCount: productsList.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductContainer(id: index);},
            )
          ],
        ),
      ),
    );
  }
}