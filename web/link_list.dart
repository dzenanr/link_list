import 'dart:html';

List links = new List();

class Link {
  var name, url, description;
}

init() {
  var link1 = new Link();
  link1.name = "dartling";
  link1.url = "https://github.com/dzenanr/dartling";
  link1.description = "Domain model framework";
  links.add(link1);
  var link2 = new Link();
  link2.name = "Dart";
  link2.url = "http://www.dartlang.org/";
  link2.description = "Web programming language";
  links.add(link2);
}

display() {
  String list = '';
  for (var link in links) {
    var alink = '''
      <a href="${link.url}">
        ${link.name}
      </a>''';
    list = '$list ${alink} <br/> ${link.description} <br/><br/>';
  }
  // the HTML library defines a global "document" variable
  // document.querySelector('#links').innerHtml = list; // no clickable web links
  document.querySelector('#links').setInnerHtml(
      list,
      validator: new NodeValidatorBuilder()
      ..allowHtml5()
      ..allowElement('a', attributes: ['href'])
  );
}

void main() {
  init();
  display();
}