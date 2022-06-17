import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/model/movie.dart';

class MoviewDetailsPage extends StatefulWidget {

  final Movie movie;

  const MoviewDetailsPage({required this.movie});

  @override
  State<MoviewDetailsPage> createState() => _MoviewDetailsPageState();
}

class _MoviewDetailsPageState extends State<MoviewDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movie.name!),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Image.asset(
        widget.movie.image!,
        width: double.infinity,
        height: 250,
        fit: BoxFit.cover,
      ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.movie.name!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text(widget.movie.subtitle!,style: TextStyle(fontSize: 18,color: Colors.grey),),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(widget.movie.rating!.toString()),
                          Icon(Icons.star,color: Colors.amberAccent,)
                        ],
                      ),
                    ),
                  ],
                ),

                Text('Chronicles the experiences of a formerly successful banker as a prisoner in the gloomy jailhouse of Shawshank after being found guilty of a crime he did not commit. The film portrays the man\'s unique way of dealing with his new, torturous life; along the way he befriends a number of fellow prisoners, most notably a wise long-term inmate named Red',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
              ],
            ),
          ),
      ]
    ),
    );
  }
}
