
class DailyBean {

  final String msg;
  final int code;
  final Data data;

	DailyBean.fromJsonMap(Map<String, dynamic> map): 
		msg = map["msg"],
		code = map["code"],
		data = Data.fromJsonMap(map["data"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['msg'] = msg;
		data['code'] = code;
		data['data'] = data == null ? null : this.data.toJson();
		return data;
	}
}

class Data {

	final String date;
	final List<Stories> stories;
	final List<Top_stories> top_stories;

	Data.fromJsonMap(Map<String, dynamic> map):
				date = map["date"],
				stories = List<Stories>.from(map["stories"].map((it) => Stories.fromJsonMap(it))),
				top_stories = List<Top_stories>.from(map["top_stories"].map((it) => Top_stories.fromJsonMap(it)));

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['date'] = date;
		data['stories'] = stories != null ?
		this.stories.map((v) => v.toJson()).toList()
				: null;
		data['top_stories'] = top_stories != null ?
		this.top_stories.map((v) => v.toJson()).toList()
				: null;
		return data;
	}
}

class Stories {

	final String image_hue;
	final String title;
	final String url;
	final String hint;
	final String ga_prefix;
	final List<String> images;
	final int type;
	final int id;

	Stories.fromJsonMap(Map<String, dynamic> map):
				image_hue = map["image_hue"],
				title = map["title"],
				url = map["url"],
				hint = map["hint"],
				ga_prefix = map["ga_prefix"],
				images = List<String>.from(map["images"]),
				type = map["type"],
				id = map["id"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['image_hue'] = image_hue;
		data['title'] = title;
		data['url'] = url;
		data['hint'] = hint;
		data['ga_prefix'] = ga_prefix;
		data['images'] = images;
		data['type'] = type;
		data['id'] = id;
		return data;
	}
}

class Top_stories {

	final String image_hue;
	final String hint;
	final String url;
	final String image;
	final String title;
	final String ga_prefix;
	final int type;
	final int id;

	Top_stories.fromJsonMap(Map<String, dynamic> map):
				image_hue = map["image_hue"],
				hint = map["hint"],
				url = map["url"],
				image = map["image"],
				title = map["title"],
				ga_prefix = map["ga_prefix"],
				type = map["type"],
				id = map["id"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['image_hue'] = image_hue;
		data['hint'] = hint;
		data['url'] = url;
		data['image'] = image;
		data['title'] = title;
		data['ga_prefix'] = ga_prefix;
		data['type'] = type;
		data['id'] = id;
		return data;
	}
}
