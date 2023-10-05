// Activity 10
// ==========
// Genera una classe abstracta anomenada “Treballador”. Aquesta classe ha de tenir les següents variables:
//
// id		(és un identificador únic)
// nom		(nom complet del treballador)
// sou		(sou numèric)
// retencio 	(valor de retenció que té assignat el treballador)
//
// Seguidament declara i implementa el mètode imprimirNom(), que imprimeixi el nom de l’empleat.
// També declara el mètode souNet(), que imprimeixi el sou net de cada empleat.
//
// Seguidament has de generar dos perfils d’empleats, Administratiu i Comercial.
//
// El perfil Comercial, ha d’afegir a més dues característiques que són:
//
//
// ventes	(nº de ventes que fa)
// comisio	(import que s’emporta per venta un comercial)
//
// Implementa totes aquestes classes. Dintre del mètode “main()” genera dues classes de treballador específic:
//
// maria	=>	Administratiu
// aina		=>	Comercial
//
// Finalment, genera aquests dos treballadors concrets i crida els seus dos respectius mètodes.


abstract class Treballador {
  int id;
  String nom;
  double sou;
  double retencio;

  Treballador(this.id, this.nom, this.sou, this.retencio);

  void imprimirNom() {
    print('El nom del treballador és: $nom');
  }

  void souNet() {
    print('El sou net del treballador és: ${sou - retencio}');
  }
}

class Administratiu extends Treballador {
  Administratiu(int id, String nom, double sou, double retencio) : super(id, nom, sou, retencio);
}

class Comercial extends Treballador {
  int ventes;
  double comisio;

  Comercial(int id, String nom, double sou, double retencio, this.ventes, this.comisio) : super(id, nom, sou, retencio);
}

void start() {
  Administratiu maria = Administratiu(1, 'Maria', 1000, 100);
  Comercial aina = Comercial(2, 'Aina', 1000, 100, 10, 10);

  maria.imprimirNom();
  maria.souNet();

  aina.imprimirNom();
  aina.souNet();
}