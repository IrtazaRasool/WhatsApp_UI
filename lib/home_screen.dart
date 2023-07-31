import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(length: 4, child: Scaffold(

      appBar: AppBar(
        title: const Text(
          ' WhatsApp',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 25 ),
        ),
        bottom: const TabBar(
          tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            
            Tab(child: Text('Chat', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15 ))),
            Tab(child: Text('Status', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15 ))),
            Tab(child: Text('Calls', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15 ))),
          ],
        ),
        actions: [
          const Icon(Icons.search),
          const SizedBox(width: 10,),
          PopupMenuButton(
              icon: const Icon(Icons.more_horiz),
              itemBuilder: (context) => [
                const PopupMenuItem( value: '1',
                        child: Text('New Group')),
                const PopupMenuItem( value: '2',
                    child: Text('Settings')),
                const PopupMenuItem( value: '3',
                    child: Text('Logout')),
              ]),
          
          // const Icon(Icons.more_horiz),
          const SizedBox(width: 10,),

        ],
        backgroundColor: Colors.teal,
      ),



        body:TabBarView(
          children: [
            const Text('Camera'),
            ListView.builder(
              itemCount: 20,
                itemBuilder: (context, index){
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://img.etimg.com/thumb/msid-69280013,width-650,height-488,imgsize-150576,,resizemode-75/john-wicks-noble-hobby-revealed-keanu-reeves-says-it-was-cut-from-original-film.jpg'),
                    ),

                    title: Text('John Wick'),
                    subtitle: Text('Where is my Dog?'),
                    trailing: Text('9:32 PM'),
                  );
                }

            ),


            ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index){

                  if(index == 0){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('New Updates'),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.green,
                                  width: 3,
                                ),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage('https://img.etimg.com/thumb/msid-69280013,width-650,height-488,imgsize-150576,,resizemode-75/john-wicks-noble-hobby-revealed-keanu-reeves-says-it-was-cut-from-original-film.jpg'),
                              ),
                            ),

                            title: const Text('John Wick'),
                            subtitle: const Text('15 min ago'),
                            trailing: const Text('9:32 PM'),
                          ),
                        ],
                      ),
                    );
                    
                  }else{
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Viewed Updates'),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.green,
                                  width: 3,
                                ),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage('https://img.etimg.com/thumb/msid-69280013,width-650,height-488,imgsize-150576,,resizemode-75/john-wicks-noble-hobby-revealed-keanu-reeves-says-it-was-cut-from-original-film.jpg'),
                              ),
                            ),

                            title: const Text('John Wick'),
                            subtitle: const Text('15 min ago'),
                            trailing: const Text('9:32 PM'),
                          ),
                        ],
                      ),
                    );
                  }
                }

            ),



            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage('https://img.etimg.com/thumb/msid-69280013,width-650,height-488,imgsize-150576,,resizemode-75/john-wicks-noble-hobby-revealed-keanu-reeves-says-it-was-cut-from-original-film.jpg'),
                    ),

                    title: const Text('John Wick'),
                    subtitle: Text( index /2 == 0 ?'Voice Call 9:32 PM' : 'Video Call 9:32 PM '),
                    trailing: Icon(index /2 == 0? Icons.phone : Icons.video_call),
                  );
                }

            ),

          ],
        ),
    ));
  }
}
