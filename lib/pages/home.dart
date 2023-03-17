import 'package:flutter/material.dart';

import 'news_box.dart';


class Home extends StatelessWidget {



    List news = [
      // Titel, Inhalt, Bild
      ['xy','Lebensmittelverschwendung belastet unnötig die Umwelt, setzt dem Welthunger nichts entgegen und kostet außerdem Geld – das wissen wir alle. Trotzdem verschwendet jeder Europäer im Durchschnitt knapp 100 kg an Lebensmitteln im Jahr.', 'lib/images/Lasagne.png'],
      ['xy', 'Rund 18 Millionen Tonnen Lebensmittel landen in Deutschland jedes Jahr im Müll. Das entspricht einem Drittel dessen, was hier jährlich produziert wird. Pro Sekunde sind das 313 Kilo gute und noch genießbare Nahrungsmittel, die in die Tonne wandern. Die Zahlen stammen aus einer Studie des WWF. Hier heißt es auch, dass die privaten Haushalte für rund 7,23 Millionen Tonnen dieser Lebensmittelverschwendung verantwortlich sind (40%). Das müsste nicht sein. Lebensmittel retten ist nicht so schwer.', 'lib/images/Lasagne.png'],
      ['xy', 'Erste Lebensmittel werden schon auf den Äckern aussortiert, etwa weil sie nicht der Norm für Supermärkte entsprechen. Läden sortieren Nahrungsmittel aus, bevor sie das Mindesthaltbarkeitsdatum erreichen – weil Kund:innen es sonst nicht kaufen. Und weil heute das ganze Jahr über alle erdenklichen Lebensmittel verfügbar sein sollen, importieren wir sie aus den entferntesten Winkeln der Welt. Doch je länger der Weg und je mehr Zwischenstationen es gibt, desto größer ist die Wahrscheinlichkeit, dass Lebensmittel während des Transports Schaden nehmen und verderben.Lebensmittelverschwendung ist ein Luxus unserer Überflussgesellschaft, den wir uns nicht länger leisten sollten oder sogar können.', 'lib/images/Lasagne.png'],
      ['xy', 'Lebensmittel, die das Mindesthaltbarkeitsdatum (MHD) überschritten haben, werfen wir oft als „abgelaufen“ in den Müll – eine völlig grundlose Lebensmittelverschwendung. Nicht umsonst steht da „Mindestens haltbar bis“. Oft kann man die Waren mehrere Tage bis Wochen über das MHD hinaus problemlos verzehren. Wir empfehlen: Schau dir das fragliche Produkt einfach genau an und vertrau auf deine Sinne!', 'lib/images/Lasagne.png'],
      ['xy', 'Obst und Gemüse entsprechend der Saison einzukaufen, ist für die Umwelt auf jeden Fall sinnvoll und gehört zum klimafreundlichen Einkauf dazu. Saisonales Gemüse aus der Region hält sich länger und läuft weniger Gefahr, beim Transport beschädigt und damit aussortiert zu werden. Obst und Gemüse aus fernen Ländern geht teilweise kaputt – auch das ist Lebensmittelverschwendung.', 'lib/images/Lasagne.png'],
      ['xy', 'Riesige Mengen Lebensmittel landen im Müll, bevor sie überhaupt die Supermärkte erreichen – in Deutschland rund zwei Millionen Tonnen pro Jahr. Denn viele Verbraucher:innen erwarten perfekt geformte Karotten, Gurken in Einheitsgröße und makellose Äpfel. Dabei kommt es bei Obst und Gemüse doch wirklich nicht auf das Äußere an! Setze ein Zeichen gegen Lebensmittelverschwendung, indem du auch krummen Karotten eine Chance gibst.', 'lib/images/Lasagne.png'],
      ['xy', 'Die App Too Good To Go soll helfen, die Lebensmittelverschwendung in der Gastronomie zu reduzieren. Das Prinzip ist einfach: Restaurants, Cafés und Imbisse stellen ihre überschüssigen Speisen kurz vor Ladenschluss ein, die Kund:innen können sie anschließend reservieren und abholen.', 'lib/images/Lasagne.png'],
      ['xy', 'Die Lagerung hat großen Einfluss auf die Haltbarkeit von Lebensmitteln. Kartoffeln und Zwiebeln beispielsweise haben es gerne dunkel und nicht zu kalt. Auch Tomaten und Zitrusfrüchte sind kälteempfindlich. Frischwaren wie Salat, Spinat und Milchprodukte gehören den Kühlschrank.', 'lib/images/Lasagne.png'],
      ['xy', 'Kauf nur, was du wirklich brauchst. Überleg dir vor dem Einkauf mit einem Einkaufszettel, was du essen bzw. kochen willst und beschränke dich genau darauf – das vermeidet unnötige Lebensmittelverschwendung. Salat, Spinat, Beeren, Pilze oder Brokkoli solltest schnell nach dem Einkauf verbrauchen. Je gezielter du einkaufst, desto seltener werden Lebensmittel schlecht und laden im Müll.', 'lib/images/Lasagne.png'],
      ['xy', 'Du hast dir auf dem Markt unglaublich günstig drei Kilo Möhren aufschwatzen lassen und weißt jetzt nicht wohin damit? Der Sack Kartoffeln im Schrank fängt an, Triebe zu bilden und der Block Parmesan im Kühlschrank muss auch mal weg? Wenn du große Mengen Lebensmittel schnell verbrauchen willst, teile sie! Lade Nachbar:innen, Freund:innen oder Kolleg:innen zum Essen ein oder koch mit ihnen zusammen. Je mehr Leute, desto mehr kommt weg, desto weniger Lebensmittelverschwendung und desto mehr Spaß macht das Ganze.', 'lib/images/Lasagne.png'],
    ];

  Home({super.key});

    @override
    Widget build(BuildContext context) {
    return Scaffold(
        body:
        ListView.builder(
            itemCount: news.length,
            itemBuilder: (context, i) {
              return News(title: news[i][0],content: news[i][1],image: news[i][2]);
            }
        )
    );
  }
}