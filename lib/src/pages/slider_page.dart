import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
 

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State <SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
            child: _crearImagen())
          ]
        )
      ),
    );
  }

  _crearSlider() {
    return Slider(
      activeColor: Colors.red,
      label: 'Tamaño Imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck)  ? null :  (valor){
       setState(() {
          _valorSlider = valor;
       });
      },
    );
  }


  _checkBox() {
    /*return Checkbox(
     value: _bloquearCheck,
     onChanged: (valor){
      setState(() {
         _bloquearCheck = valor!;
      });
     }
     );*/

     return CheckboxListTile(
       title: Text('Bloquear Slider'),
        value: _bloquearCheck,
        onChanged: (valor){
        setState(() {
          _bloquearCheck = valor!;
        });
     }
       );
  }

  _crearSwitch() {
     return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor){
      setState(() {
          _bloquearCheck = valor;
      });
     }
    );
    
  }


  _crearImagen() {
    return Image(
      image: NetworkImage('https://images.everyeye.it/img-notizie/spider-man-top-5-scene-horror-film-sam-raimi-video-esclusiva-v3-559540-900x900.webp'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  

  
}