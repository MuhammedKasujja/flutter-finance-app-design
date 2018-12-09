import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  createState() => HomeState();
}

class HomeState extends State<HomePage> {
  List<Widget> widgets = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widgets = new List();
  }

  Widget CardWidget(int index) {
    return Card(
      child: Text("$index hello"),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("Finance"),
          centerTitle: true,
          elevation: 0.0,
          leading: Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: Icon(Icons.menu),
          ),
        ),
        body: ListView(
          children: <Widget>[
            TopView(),
          ],
        ));
  }

  Widget TopView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              height: 230.0,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.deepPurple),
            ),
            Positioned(
              top: -120,
              left: -70,
              child: Container(
                height: 300.0,
                width: 300.0,
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(150.0)),
              ),
            ),
            Positioned(
              top: -100.0,
              right: -50.0,
              child: Container(
                height: 250.0,
                width: 250.0,
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(125.0)),
              ),
            ),
            Positioned(
              top: 50.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Text(
                      "\$ 24,523",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    Text(
                      "Current Balance",
                      style: TextStyle(fontSize: 17.0, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Column(children: ListCol())
          ],
        ),
      ],
    );
  }

  List<Widget> ListCol() {
    List<Widget> d = [];
    d.add(SizedBox(
      height: 180.0,
    ));

    for (var i = 0; i < 10; i++) {
      d.add(CustomCard());
    }
    return d;
  }

  Widget CustomCard(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
      width: double.infinity,
      child: Material(
        borderRadius: BorderRadius.circular(5.0),
        elevation: 2.0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text("hello",style: TextStyle(fontSize: 20.0,fontStyle: FontStyle.normal)),
                    ),
                  ),
                  InkResponse(
                    onTap: (){},
                    child: Icon(Icons.navigate_next,color: Colors.grey,),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text("\$972",style: TextStyle(fontSize: 20.0),),
                              SizedBox(height: 5.0,),
                              Text("Actual",style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("\$1,492",style: TextStyle(fontSize: 20.0),),
                              SizedBox(height: 5.0,),
                              Text("Planed",style: TextStyle(color: Colors.grey),),
                            ],
                          )
                        ],
                      ),
                    )
                  ),
                  Container(
                    child: InkResponse(
                      onTap: (){},
                      child: Icon(Icons.add_circle,size: 45.0,color: Colors.deepPurpleAccent),
                    )
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
  }

  Widget AppWidget() {
    return Container(
        padding: EdgeInsets.only(left: 15.0, right: 20.0),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Icon(Icons.menu, size: 24.0, color: Colors.white),
            ),
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child: Text("Finance",
                  style: TextStyle(color: Colors.white, fontSize: 18.0)),
            ),
            Container(
              child: null,
            )
          ],
        ));
  }
}
