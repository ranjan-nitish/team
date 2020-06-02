import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Orderpage extends StatefulWidget {
  @override
  _OrderpageState createState() => _OrderpageState();
}

class _OrderpageState extends State<Orderpage> {
  String  _shopname;
  String  _item;
  String  _qty;
  String _address;

  final GlobalKey<FormState> _formKey= GlobalKey<FormState>();

  Widget _buildshopname(){
    return TextFormField(
      decoration: InputDecoration(labelText:'Shop Name',labelStyle: TextStyle(color:Colors.white)),
      keyboardType:TextInputType.text,
      validator:(String value){
        if(value.isEmpty){
          return'Shop Name is required';
        }
        return null;
      },
      onSaved: (String value){
        _shopname=value;
      },

    );
  }
  Widget _builditem(){
    return TextFormField(
      decoration: InputDecoration(labelText:'Item Name',labelStyle: TextStyle(color:Colors.white)),
      keyboardType:TextInputType.text,
      validator:(String value){
        if(value.isEmpty){
          return'Item Name is required';
        }
      },
      onSaved: (String value){
        _item=value;
      },

    );;
  }
  Widget _buildqty(){
    return  TextFormField(
      decoration: InputDecoration(labelText:'Quantity',labelStyle: TextStyle(color:Colors.white)),
        keyboardType:TextInputType.number,
      validator:(String value){
        if(value.isEmpty){
          return'Quantity is required';
        }
      },
      onSaved: (String value){
        _qty=value;
      },

    );;
  }
  Widget _buildaddress(){
    return   TextFormField(
      decoration: InputDecoration(labelText:'Address ',labelStyle: TextStyle(color:Colors.white)),
      keyboardType:TextInputType.text,
      validator:(String value){
        if(value.isEmpty){
          return'Address is required';
        }
      },
      onSaved: (String value){
        _shopname=value;
      },

    );;
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('NU Wallet'),backgroundColor:Colors.deepPurpleAccent,),
      body:Container(
      margin:EdgeInsets.all(24),
          color:Colors.deepPurpleAccent,
          child:Form(
            key:_formKey,
             child:SingleChildScrollView(
              child: Column(
               mainAxisAlignment:MainAxisAlignment.spaceEvenly,

                children:<Widget>[
                 _buildshopname(),
                _builditem(),
                  _buildqty(),
                 _buildaddress(),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                    Container(
                     padding:EdgeInsets.all(5),
                     margin:EdgeInsets.all(10.0),
                     color:Colors.white,
                      child:FlatButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                        child:Text('Back')
                  )
                ),
                Container(
                    padding:EdgeInsets.all(5),
                    margin:EdgeInsets.all(30.0),
                    color:Colors.white,
                    child:FlatButton(
                        onPressed: (){
                          if(_formKey.currentState.validate()){
                            return;
                          }
                          _formKey.currentState.save();
                          print(_shopname);
                        },
                        child:Text('Send')
                    )
                )
              ],
            )

    ],
          ),

      ),
        ),
    ),
    );
  }
}
