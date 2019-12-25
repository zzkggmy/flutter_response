

class ImageBean {

  final String msg;
  final int code;
  final List<ImageData> data;

	ImageBean.fromJsonMap(Map<String, dynamic> map): 
		msg = map["msg"],
		code = map["code"],
		data = List<ImageData>.from(map["data"].map((it) => ImageData.fromJsonMap(it)));

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['msg'] = msg;
		data['code'] = code;
		data['data'] = data != null ? 
			this.data.map((v) => v.toJson()).toList()
			: null;
		return data;
	}
}

class ImageData {

	final String postid;
	final String desc;
	final String pvnum;
	final String createdate;
	final String scover;
	final String setname;
	final String cover;
	final List<String> pics;
	final String clientcover1;
	final String replynum;
	final String topicname;
	final String setid;
	final String seturl;
	final String datetime;
	final String clientcover;
	final String imgsum;
	final String tcover;

	ImageData.fromJsonMap(Map<String, dynamic> map):
				postid = map["postid"],
				desc = map["desc"],
				pvnum = map["pvnum"],
				createdate = map["createdate"],
				scover = map["scover"],
				setname = map["setname"],
				cover = map["cover"],
				pics = List<String>.from(map["pics"]),
				clientcover1 = map["clientcover1"],
				replynum = map["replynum"],
				topicname = map["topicname"],
				setid = map["setid"],
				seturl = map["seturl"],
				datetime = map["datetime"],
				clientcover = map["clientcover"],
				imgsum = map["imgsum"],
				tcover = map["tcover"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['postid'] = postid;
		data['desc'] = desc;
		data['pvnum'] = pvnum;
		data['createdate'] = createdate;
		data['scover'] = scover;
		data['setname'] = setname;
		data['cover'] = cover;
		data['pics'] = pics;
		data['clientcover1'] = clientcover1;
		data['replynum'] = replynum;
		data['topicname'] = topicname;
		data['setid'] = setid;
		data['seturl'] = seturl;
		data['datetime'] = datetime;
		data['clientcover'] = clientcover;
		data['imgsum'] = imgsum;
		data['tcover'] = tcover;
		return data;
	}
}
