import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:async';
import 'package:crud/ui/lista_producto.dart';
import 'package:crud/model/producto.dart';
import 'package:crud/ui/producto_info.dart';
import 'package:crud/ui/producto_mostrar.dart';

class ListaProducto extends StatefulWidget {
  @override
  _ListaProductoState createState() => _ListaProductoState();
}

final productoreference = FirebaseDatabase.instance.reference().child('producto');
class _ListaProductoState extends State<ListaProducto> {


  List<ListaProducto> items;
  StreamSubscription<Event> AdcionarProducto;
  StreamSubscription<Event> EditarProducto;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items = new List();
    AdcionarProducto = productoreference.onChildAdded.listen(AdcionarProducto);
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
