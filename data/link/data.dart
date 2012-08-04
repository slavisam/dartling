
class LinkData {

  Concept categoryConcept;
  Concept webLinkConcept;

  Categories categories;

  /**
   *  || Category
   *  id name
   *  at description
   *  0N webLinks
   *
   *  WebLink
   *  id name
   *  rq url
   *  at description
   *  id category
   */
  var _json = '''
    {"width":990,"lines":[{"box2box1Min":"1","box1Name":"Category",
    "box1box2Min":"0","box2Name":"WebLink","category":"relationship",
    "box2box1Id":true,"box2box1Name":"category","box1box2Id":false,
    "box1box2Name":"webLinks","box1box2Max":"N","internal":true,
    "box2box1Max":"1"}],"height":580,"boxes":[{"entry":true,"name":"Category",
    "x":146,"y":201,"width":120,"height":120,"items":[{"sequence":20,
    "category":"identifier","name":"name","type":"String","init":""},
    {"sequence":30,"category":"attribute","name":"description",
    "type":"String","init":""}]},{"entry":false,"name":"WebLink",
    "x":505,"y":215,"width":120,"height":120,
    "items":[{"sequence":20,"category":"identifier","name":"name",
    "type":"String","init":""},{"sequence":30,"category":"required",
    "name":"url","type":"String","init":""},{"sequence":40,
    "category":"attribute","name":"description","type":"String","init":""}]}]}
  ''';

  LinkData() {
    Domain domain = fromMagicBoxes(_json);
    Model model = domain.model;
    categoryConcept = model.concepts.getEntityByCode('Category');
    webLinkConcept = model.concepts.getEntityByCode('WebLink');
    categories = new Categories(categoryConcept);
  }

}

