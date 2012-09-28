
#import("package:unittest/unittest.dart", prefix:"unittest");
//#import("../../../../unittest/unittest.dart");
#import("package:dartling/dartling.dart");
//#source("../../../lib/data/repository.dart");

// Code template for the last group test.

lastGroupTest(Repo repo, String domainCode, String modelCode) {
  group('Testing ${domainCode}.${modelCode}', () {
    setUp(() {
      var models = repo.getDomainModels(domainCode);
      var session = models.newSession();
      var entries = models.getModelEntries(modelCode);
      expect(entries, isNotNull);


    });
    tearDown(() {

    });
    test('Test Title', () {

    });

  });
}

