part of link_list;

List links = new List();

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

class Link {
  var name, url, description;
}
