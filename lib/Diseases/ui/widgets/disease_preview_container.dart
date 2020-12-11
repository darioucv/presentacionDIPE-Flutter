import 'package:flutter/material.dart';

class DiseasePreviewContainer extends StatefulWidget {

  final VoidCallback onPressed;
  final String disease;
  final String concept;
  final String urlImage;

  const DiseasePreviewContainer({Key key,@required  this.disease, @required this.concept, @required this.urlImage,@required this.onPressed});


  @override
  _DiseasePreviewContainerState createState() => _DiseasePreviewContainerState();
}

class _DiseasePreviewContainerState extends State<DiseasePreviewContainer> {
  @override
  Widget build(BuildContext context) {
    return diseasePreviewContainerWidget(widget.onPressed,widget.disease,widget.concept,widget.urlImage);
  }


  Widget diseasePreviewContainerWidget(VoidCallback onPressed,String disease,String concept, String urlImage){
    
    return InkWell(
      onTap: onPressed,
      child: Card(
        
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            Text(disease),
            validacionTamanioTexto(concept),
            Image.network(urlImage),
          ],
        ),
        
      ),
    );
}
Widget validacionTamanioTexto(String texto){
    if(texto.length>200){
      return Text(texto.substring(0, 200));
    }else{
      return Text(texto);
    }
  }
}