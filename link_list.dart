
#import('dart:html');

#source('links.dart');

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
  document.query('#links').innerHTML = list;
}

void main() {
  init();
  display();
}