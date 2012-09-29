
// dartling_view.dart

/*
http://opensource.org/licenses/

http://en.wikipedia.org/wiki/BSD_license
3-clause license ("New BSD License" or "Modified BSD License")

Copyright (c) 2012, Dartling project authors
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Dartling nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

//#import("package:unittest/unittest.dart");
//#import("../../../../unittest/unittest.dart");
#import("dart:html");
//#import("dart:json");
#import("dart:math");
//#import("dart:uri");

#import("package:dartling/dartling.dart");
#import("package:dartling/dartling_view.dart");

/*
#source("../../../lib/data/domain/model/event/actions.dart");
#source("../../../lib/data/domain/model/event/reactions.dart");
#source("../../../lib/data/domain/model/exception/errors.dart");
#source("../../../lib/data/domain/model/exception/exceptions.dart");
#source("../../../lib/data/domain/model/transfer/json.dart");
#source("../../../lib/data/domain/model/entities.dart");
#source("../../../lib/data/domain/model/entity.dart");
#source("../../../lib/data/domain/model/entries.dart");
#source("../../../lib/data/domain/model/id.dart");
#source("../../../lib/data/domain/model/oid.dart");
#source("../../../lib/data/domain/models.dart");
#source("../../../lib/data/domain/session.dart");

#source("../../../lib/data/gen/dartling_data.dart");
#source("../../../lib/data/gen/dartling_view.dart");
#source("../../../lib/data/gen/generated.dart");
#source("../../../lib/data/gen/specific.dart");
#source("../../../lib/data/gen/tests.dart");

#source("../../../lib/data/meta/attributes.dart");
#source("../../../lib/data/meta/children.dart");
#source("../../../lib/data/meta/concepts.dart");
#source("../../../lib/data/meta/domains.dart");
#source("../../../lib/data/meta/models.dart");
#source("../../../lib/data/meta/neighbor.dart");
#source("../../../lib/data/meta/parents.dart");
#source("../../../lib/data/meta/property.dart");
#source("../../../lib/data/meta/types.dart");

#source("../../../lib/data/repository.dart");

#source("../../../lib/view/component/entities.dart");
#source("../../../lib/view/component/entity.dart");
#source("../../../lib/view/component/param.dart");
#source("../../../lib/view/component/repo.dart");
*/

#source("data/art/pen/json/data.dart");
#source("data/art/pen/json/model.dart");

#source("data/art/pen/init.dart");
#source("data/art/pen/segments.dart");
#source("data/art/pen/lines.dart");

#source("data/gen/art/pen/entries.dart");
#source("data/gen/art/pen/segments.dart");
#source("data/gen/art/pen/lines.dart");
#source("data/gen/art/models.dart");
#source("data/gen/art/repository.dart");

initArtData(ArtRepo artRepo) {
   var artModels =
       artRepo.getDomainModels(ArtRepo.artDomainCode);

   var artPenEntries =
       artModels.getModelEntries(ArtRepo.artPenModelCode);
   initArtPen(artPenEntries);
   artPenEntries.display();
   artPenEntries.displayJson();
}

showArtData(ArtRepo artRepo) {
   var mainView = new View(document, "main");
   mainView.repo = artRepo;
   new RepoMainSection(mainView);
}

void main() {
  var artRepo = new ArtRepo();
  initArtData(artRepo);
  showArtData(artRepo);
}
