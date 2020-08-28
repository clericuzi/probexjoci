import 'package:flutter/material.dart';
import 'package:probexjoci/dados.dart';
import 'package:probexjoci/screens/detalhes.dart';

class ProductContainer extends StatelessWidget {
  final int id;

  const ProductContainer({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailsScreen(id: id)),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(padding: const EdgeInsets.all(8.0),),
            SizedBox(height: 15.0,),

            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Hero(
                  tag: '$id',
                  child: Image.network(
                    "${productsList[id].img}",
                    fit: BoxFit.cover,
                    // width: double.infinity,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0,),



            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(12.0), // altura roxo
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.all(
                  Radius.circular(9.0),
                ),
              ),
              child: Text(
                "${productsList[id].title}",
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
