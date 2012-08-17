
class InstitutionEntries extends ModelEntries {

  InstitutionEntries(Model model) : super(model);

  Map<String, Entities> newEntries() {
    var entries = new Map<String, Entities>();
    var concept = model.concepts.findByCode('Ecole');
    entries[concept.code] = new Ecoles(concept);
    return entries;
  }

  Entities newEntities(String conceptCode) {
    var concept = model.concepts.findByCode(conceptCode);
    if (concept.code == 'Ecole') {
      return new Ecoles(concept);
    } else {
      throw new ConceptException('${concept.code} concept does not exist.');
    }
  }

  Entity newEntity(String conceptCode) {
    var concept = model.concepts.findByCode(conceptCode);
    if (concept.code == 'Ecole') {
      return new Ecole(concept);
    } else {
      throw new ConceptException('${concept.code} concept does not exist.');
    }
  }

  fromJsonToData() {
    fromJson(davidCurtisInstitutionDataInJson);
  }

  Ecoles get ecoles() => getEntry('Ecole');

  Concept get ecoleConcept() => ecoles.concept;

}






