import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Datenschutz extends StatelessWidget {
  const Datenschutz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(5),

                    border: Border.all()),

                child:Text("DATENSCHUTZ",style: TextStyle(color: Colors.white,fontSize: 40),),
               ),
            )
            ),
          Padding(
            padding: const EdgeInsets.all(4.0),

            child: Text("Vorwort"),
          ),
          Text("Die Betreiber von Akademischer Verein zu Euregio e.V. nehmen den Schutz der privaten Daten ernst. Die besondere Beachtung der Privatsphäre bei der Verarbeitung persönlicher Daten ist ein wichtiges Anliegen. Persönliche Daten werden gemäss den Bestimmungen des Bundesdatensschutzgesetzes BDSG verwendet; die Betreiber dieser Website verpflichten sich zur Verschwiegenheit. Diese Webseiten können Links zu Webseiten anderer Anbieter enthalten, auf die sich diese Datenschutzerklärung nicht erstreckt. Weitere wichtige Informationen finden sich auch in den Allgemeinen Nutzungsbedingungen."),
        ],
      ),
    );
  }
}
