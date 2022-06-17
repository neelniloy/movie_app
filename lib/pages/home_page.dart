import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/pages/movie_details.dart';
import 'package:movie_app/temp_db/tempdata.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie List'),
      ),
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context,index)=>Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  MoviewDetailsPage(movie: movieList[index],)));
            },
            title: Text(movieList[index].name!,),
            subtitle: Text(movieList[index].subtitle!),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(movieList[index].rating!.toString()),
                Icon(Icons.star,color: index.isEven?Colors.green:Colors.red,)
              ],
            ),
            tileColor: Colors.white,
            leading: Image.asset(movieList[index].image!),
          ),
        ),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: movieList.map((movie) => Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                MoviewDetailsPage(movie: movie,)));
          },
          title: Text(movie.name!,),
          subtitle: Text(movie.subtitle!),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(movie.rating!.toString()),
              Icon(Icons.star)
            ],
          ),
          tileColor: Colors.white,
          leading: Image.asset(movie.image!),
        ),
      )).toList()
    );
  }
}
