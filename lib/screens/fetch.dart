import 'package:flutter/material.dart';

import '../models/index.dart';
import '../services/index.dart';

class Fetch extends StatefulWidget {
  const Fetch({Key? key}) : super(key: key);

  @override
  _FetchState createState() => _FetchState();
}

class _FetchState extends State<Fetch> {
  Service s = new Service();
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Api'),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 20),
        color: Color.fromARGB(255, 221, 212, 212),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder<List<Model>>(
                future: s.fetchdata(), //callf(),
                builder: (context, AsyncSnapshot<List<Model>> snapshot) {
                  if (snapshot.hasData) {
                    print('We are in item.hasdata');
                    return Container(
                      child: Column(
                        children: [
                          ...snapshot.data!.map((e) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //1st container box
                                Flexible(
                                  child: Container(
                                    //width: 200,
                                    width:
                                        MediaQuery.of(context).size.width / 1.1,

                                    margin: EdgeInsets.only(top: 20),
                                    height:
                                        MediaQuery.of(context).size.height / 5,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(6),
                                      ),
                                    ),

                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                                left: 10,
                                              ),
                                              child: Text(
                                                e.name ?? '',
                                                style: TextStyle(
                                                    color: Colors.purple[900],
                                                    fontSize: 20),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Row(
                                                children: [
                                                  Text(e.subjects?.first ?? ''),
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 2, right: 2),
                                                    child: Icon(
                                                      Icons.fiber_manual_record,
                                                      color: Colors.grey,
                                                      size: 7,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 2, right: 2),
                                                    child: 
                                                        Text((e.qualification!.first
                                                                        .length >
                                                                    16) ==
                                                                false
                                                            ? e.qualification
                                                                    ?.first ??
                                                                ''
                                                            : ''),
                                                  ),
                                                  
                                                ],
                                              ),
                                            ),
                                            Flexible(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10),
                                                child: GestureDetector(
                                                  onTap: null,
                                                  child: Container(
                                                    width: 80,
                                                    height: 40,
                                                    child: Card(
                                                      color: Colors.purple[900],
                                                      elevation: 4,
                                                     
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                      child: const Padding(
                                                        padding:
                                                            EdgeInsets.all(8.0),
                                                        child: Text(
                                                          'View More',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 10),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            
                                          ],
                                        ),

                                        //Image
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 50),
                                          child: Image.network(
                                            e.profileImage ?? '',
                                            width: 60,
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                          ),
                                        ),
                                      ],
                                    ),

                                    
                                  ),
                                ),
                               
                              ],
                            );
               
                          }).toList()
                        ],
                      ),
                    );
                  } else if (snapshot.hasError) {
                    print('We are in item.error');
                    return Text(snapshot.error.toString());
                  }
                  return const CircularProgressIndicator();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}




