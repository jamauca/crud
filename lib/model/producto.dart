import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class producto{
  
  String id;
  String nombre;
  String codigo;
  String descripcion;
  String precio;
  String stock;
  producto(this.id,this.codigo,this.descripcion,this.nombre,this.precio,this.stock
  );
producto.map(dynamic obj)
{
  this.codigo = obj [codigo];
  this.nombre = obj [nombre];
  this.descripcion = obj [descripcion];
  this.precio = obj [precio];
  this.stock = obj [stock];


}

String get _id => id;
  String get _nombre => nombre;
  String get _codigo => codigo;
  String get _descripcion => descripcion;
  String get _precio => precio;
  String get _stock => stock;

  producto.fromSnapShot (DataSnapshot snapshot)
  {
    id =snapshot.key;
    nombre = snapshot.value[_nombre];
    codigo = snapshot.value[_codigo];
    descripcion = snapshot.value[_descripcion];
    precio = snapshot.value[_precio];
    stock = snapshot.value[_stock];
  }
}