import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Datenschutz extends StatelessWidget {
  const Datenschutz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(

        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all()),
                    child: Text(
                      "DATENSCHUTZ",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Vorwort",
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(

                child: Text(
                    "Die Betreiber von Akademischer Verein zu Euregio e.V. nehmen den Schutz der privaten Daten ernst. Die besondere Beachtung der Privatsphäre bei der Verarbeitung persönlicher Daten ist ein wichtiges Anliegen. Persönliche Daten werden gemäss den Bestimmungen des Bundesdatensschutzgesetzes BDSG verwendet; die Betreiber dieser Website verpflichten sich zur Verschwiegenheit. Diese Webseiten können Links zu Webseiten anderer Anbieter enthalten, auf die sich diese Datenschutzerklärung nicht erstreckt. Weitere wichtige Informationen finden sich auch in den Allgemeinen Nutzungsbedingungen."),
             ),
            ),
            Column(
              children: [

                Container(

                  child: ExpansionTile(
                    trailing: Text(""),
                    title: Text("1.Personenbezogenen Daten",
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    children: [
                      Text(
                          'Personenbezogene Daten sind Informationen, die dazu genutzt werden können, die Identität zu erfahren. Darunter fallen Informationen wie richtiger Name, Adresse, Postanschrift, Telefonnummer. Informationen, die nicht direkt mit der wirklichen Identität in Verbindung gebracht werden (wie zum Beispiel favorisierte Webseiten oder Anzahl der Nutzer einer Site) fallen nicht darunter.'
                          'Man kann unser Online-Angebot grundsätzlich ohne Offenlegung der Identität nutzen. Wenn man sich für eine Registrierung entscheidet, sich also als Mitglied (registrierter Benutzer) anmeldet, kann man im individuellen Benutzerprofil persönlichen Informationen hinterlegen. Es unterliegt der freien Entscheidung, ob diese Daten eingegeben werden. Da versucht wird, für eine Nutzung des Angebots so wenig wie möglich personenbezogene Daten zu erheben, reicht für eine Registrierung die Angabe eines Namens – unter dem man als Mitglied geführt wird und der nicht mit dem realen Namen übereinstimmen muss – und die Angabe der E-Mail-Adresse, an die das Kennwort geschickt wird, aus. In Verbindung mit dem Zugriff auf unsere Seiten werden serverseitig Daten (zum Beispiel IP-Adresse, Datum, Uhrzeit und betrachtete Seiten) gespeichert. Es findet keine personenbezogene Verwertung statt. Die statistische Auswertung anonymisierter Datensätze bleibt vorbehalten.'
                          'Wir nutzen die persönlichen Daten zu Zwecken der technischen Administration der Webseiten und zur Kundenverwaltung nur im jeweils dafür erforderlichen Umfang. Darüber hinaus werden persönliche Daten nur dann gespeichert, wenn diese freiwillig angegeben werden.'),
                    ],
                  ),
                ),

                Container(

                  child: ExpansionTile(
                    trailing: Text(""),
                    title: Text("2.weitergabe perzonenbezogener Daten",
                        textAlign: TextAlign.start,
                        style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    children: [
                      Text(
                          'Wir verwenden personenbezogene Informationen nur für diese Webseite. Wir geben die Informationen nicht ohne ausdrückliches Einverständnis an Dritte weiter. Sollten im Rahmen der Auftragsdatenverarbeitung Daten an Dienstleister weitergegeben werden, so sind diese an das Bundesdatenschutzgesetz BDSG, andere gesetzliche Vorschriften und an diese Privacy Policy gebunden.'
                  'Erhebungen bzw. Übermittlungen persönlicher Daten an staatliche Einrichtungen und Behörden erfolgen nur im Rahmen zwingender Rechtsvorschriften.'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
