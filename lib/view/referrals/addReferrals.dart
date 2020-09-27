import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddReferral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Referrals',style:TextStyle(
          fontFamily: 'Montserrat',
          color: Colors.black
        )),
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back,color: Colors.blue,),

      ),
      bottomNavigationBar: _bottom(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: deviceWidth,
            height:  MediaQuery.of(context).size.height*.53,

            decoration: BoxDecoration(
                color: Colors.white,
              border: Border.all(color:Colors.black12,),
              borderRadius: BorderRadius.circular(5)
            ),
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,),
                          Text('Add your candidate details',style:TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                            fontSize: 18
                          )),
                  SizedBox(height: 35,),
                  Container(
                    height: 40,
                    width: deviceWidth,
                    child: TextFormField(
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                      ),
                      cursorColor: Colors.black,
                      decoration: new InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(17,4,0,4),
                        hintText: 'Candidate Name',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          color: Colors.black54,
                        ),
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 40,
                    width: deviceWidth,
                    child: TextFormField(
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                      ),
                      cursorColor: Colors.black,
                      decoration: new InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(17,4,0,4),
                        hintText: 'Candidate Email',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          color: Colors.black54,
                        ),
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: Colors.black),

                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 40,
                    width: deviceWidth,
                    child: TextFormField(
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                      ),
                      cursorColor: Colors.black,
                      decoration: new InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(17,4,0,4),
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: Container(

                      decoration: BoxDecoration(
                          color: Colors.blue,
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20,10,20,10),

                        child: Text('Upload Resume',
                           style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                            )
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _bottom(){
    return Row(
      children: [
        Expanded(
          child: Container(

            height: 45,
            decoration: BoxDecoration(
                color: Colors.white,
              boxShadow: [BoxShadow(
                blurRadius: 4,
                offset: Offset(0,-1),
                color: Colors.black54
              )]
            ),
            child: Center(
              child: Text('Done',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    color: Colors.blue,
                  )
              ),
            )

          ),
        ),
      ],
    );
  }
}
