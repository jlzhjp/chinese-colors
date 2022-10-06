import 'dart:convert';
import 'dart:io';

class Verse {
  final String content;
  final String origin;
  final String author;

  Verse({required this.content, required this.origin, required this.author});

  Verse.fromJson(Map<String, dynamic> json)
      : content = json['content'],
        origin = json['origin'],
        author = json['author'];
}

const topics = {
  '春': 'https://v1.jinrishici.com/siji/chuntian',
  '夏': 'https://v1.jinrishici.com/siji/xiatian',
  '秋': 'https://v1.jinrishici.com/siji/qiutian',
  '冬': 'https://v1.jinrishici.com/siji/dongtian',
};

HttpClient client = HttpClient();

Future<Verse?> parseVerseFromUrl(String url) async {
  var req = await client.getUrl(Uri.parse(url));
  var res = await req.close();
  if (res.statusCode / 100 == 2) {
    final content = await res.transform(utf8.decoder).join();
    return Verse.fromJson(json.decode(content));
  }
  return null;
}

Future<Verse> getVerseForTopic(String topic) async {
  final def = Verse(content: '春眠不觉晓，处处闻啼鸟', origin: '春晓', author: '李白');
  if (topics.containsKey(topic)) {
    return await parseVerseFromUrl(topics[topic]!) ?? def;
  } else {
    return await parseVerseFromUrl('https://v1.jinrishici.com/all') ?? def;
  }
}
