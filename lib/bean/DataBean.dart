

class DataBean {

  final Data data;
  final int errorCode;
  final String errorMsg;

	DataBean.fromJsonMap(Map<String, dynamic> map): 
		data = Data.fromJsonMap(map["data"]),
		errorCode = map["errorCode"],
		errorMsg = map["errorMsg"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['data'] = data == null ? null : this.data.toJson();
		data['errorCode'] = errorCode;
		data['errorMsg'] = errorMsg;
		return data;
	}
}

class Data {

	final int curPage;
	final List<Datas> datas;
	final int offset;
	final bool over;
	final int pageCount;
	final int size;
	final int total;

	Data.fromJsonMap(Map<String, dynamic> map):
				curPage = map["curPage"],
				datas = List<Datas>.from(map["datas"].map((it) => Datas.fromJsonMap(it))),
				offset = map["offset"],
				over = map["over"],
				pageCount = map["pageCount"],
				size = map["size"],
				total = map["total"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['curPage'] = curPage;
		data['datas'] = datas != null ?
		this.datas.map((v) => v.toJson()).toList()
				: null;
		data['offset'] = offset;
		data['over'] = over;
		data['pageCount'] = pageCount;
		data['size'] = size;
		data['total'] = total;
		return data;
	}
}

class Datas {

	final String apkLink;
	final int audit;
	final String author;
	final int chapterId;
	final String chapterName;
	final bool collect;
	final int courseId;
	final String desc;
	final String envelopePic;
	final bool fresh;
	final int id;
	final String link;
	final String niceDate;
	final String niceShareDate;
	final String origin;
	final String prefix;
	final String projectLink;
	final int publishTime;
	final int selfVisible;
	final int shareDate;
	final String shareUser;
	final int superChapterId;
	final String superChapterName;
	final List<Object> tags;
	final String title;
	final int type;
	final int userId;
	final int visible;
	final int zan;

	Datas.fromJsonMap(Map<String, dynamic> map):
				apkLink = map["apkLink"],
				audit = map["audit"],
				author = map["author"],
				chapterId = map["chapterId"],
				chapterName = map["chapterName"],
				collect = map["collect"],
				courseId = map["courseId"],
				desc = map["desc"],
				envelopePic = map["envelopePic"],
				fresh = map["fresh"],
				id = map["id"],
				link = map["link"],
				niceDate = map["niceDate"],
				niceShareDate = map["niceShareDate"],
				origin = map["origin"],
				prefix = map["prefix"],
				projectLink = map["projectLink"],
				publishTime = map["publishTime"],
				selfVisible = map["selfVisible"],
				shareDate = map["shareDate"],
				shareUser = map["shareUser"],
				superChapterId = map["superChapterId"],
				superChapterName = map["superChapterName"],
				tags = map["tags"],
				title = map["title"],
				type = map["type"],
				userId = map["userId"],
				visible = map["visible"],
				zan = map["zan"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['apkLink'] = apkLink;
		data['audit'] = audit;
		data['author'] = author;
		data['chapterId'] = chapterId;
		data['chapterName'] = chapterName;
		data['collect'] = collect;
		data['courseId'] = courseId;
		data['desc'] = desc;
		data['envelopePic'] = envelopePic;
		data['fresh'] = fresh;
		data['id'] = id;
		data['link'] = link;
		data['niceDate'] = niceDate;
		data['niceShareDate'] = niceShareDate;
		data['origin'] = origin;
		data['prefix'] = prefix;
		data['projectLink'] = projectLink;
		data['publishTime'] = publishTime;
		data['selfVisible'] = selfVisible;
		data['shareDate'] = shareDate;
		data['shareUser'] = shareUser;
		data['superChapterId'] = superChapterId;
		data['superChapterName'] = superChapterName;
		data['tags'] = tags;
		data['title'] = title;
		data['type'] = type;
		data['userId'] = userId;
		data['visible'] = visible;
		data['zan'] = zan;
		return data;
	}
}
