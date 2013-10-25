library link_list;

import 'dart:html';

part 'links.dart';

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