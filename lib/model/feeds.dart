// To parse this JSON data, do
//
//     final redditFeed = redditFeedFromJson(jsonString);

import 'dart:convert';

RedditFeed redditFeedFromJson(String str) =>
    RedditFeed.fromMap(json.decode(str));

String redditFeedToJson(RedditFeed data) => json.encode(data.toMap());

class RedditFeed {
  final String kind;
  final RedditFeedData data;

  RedditFeed({
    this.kind,
    this.data,
  });

  factory RedditFeed.fromMap(Map<String, dynamic> json) => RedditFeed(
        kind: json["kind"],
        data: RedditFeedData.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "kind": kind,
        "data": data.toMap(),
      };
}

class RedditFeedData {
  final String modhash;
  final dynamic dist;
  final List<Child> children;
  final String after;
  final dynamic before;

  RedditFeedData({
    this.modhash,
    this.dist,
    this.children,
    this.after,
    this.before,
  });

  factory RedditFeedData.fromMap(Map<String, dynamic> json) => RedditFeedData(
        modhash: json["modhash"],
        dist: json["dist"],
        children:
            List<Child>.from(json["children"].map((x) => Child.fromMap(x))),
        after: json["after"],
        before: json["before"],
      );

  Map<String, dynamic> toMap() => {
        "modhash": modhash,
        "dist": dist,
        "children": List<dynamic>.from(children.map((x) => x.toMap())),
        "after": after,
        "before": before,
      };
}

class Child {
  final Kind kind;
  final ChildData data;

  Child({
    this.kind,
    this.data,
  });

  factory Child.fromMap(Map<String, dynamic> json) => Child(
        kind: kindValues.map[json["kind"]],
        data: ChildData.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "kind": kindValues.reverse[kind],
        "data": data.toMap(),
      };
}

class ChildData {
  final dynamic approvedAtUtc;
  final String subreddit;
  final String selftext;
  final String authorFullname;
  final bool saved;
  final dynamic modReasonTitle;
  final dynamic gilded;
  final bool clicked;
  final String title;
  final List<LinkFlairRichtext> linkFlairRichtext;
  final String subredditNamePrefixed;
  final bool hidden;
  final dynamic pwls;
  final String linkFlairCssClass;
  final dynamic downs;
  final dynamic thumbnailHeight;
  final bool hideScore;
  final String name;
  final bool quarantine;
  final FlairTextColor linkFlairTextColor;
  final String authorFlairBackgroundColor;
  final SubredditType subredditType;
  final dynamic ups;
  final dynamic totalAwardsReceived;
  final MediaEmbed mediaEmbed;
  final dynamic thumbnailWidth;
  final String authorFlairTemplateId;
  final bool isOriginalContent;
  final List<dynamic> userReports;
  final Media secureMedia;
  final bool isRedditMediaDomain;
  final bool isMeta;
  final dynamic category;
  final MediaEmbed secureMediaEmbed;
  final String linkFlairText;
  final bool canModPost;
  final dynamic score;
  final dynamic approvedBy;
  final bool authorPremium;
  final String thumbnail;
  final dynamic edited;
  final String authorFlairCssClass;
  final List<AuthorFlairRichtext> authorFlairRichtext;
  final Gildings gildings;
  final dynamic contentCategories;
  final bool isSelf;
  final dynamic modNote;
  final dynamic created;
  final AuthorFlairType linkFlairType;
  final dynamic wls;
  final dynamic removedByCategory;
  final dynamic bannedBy;
  final AuthorFlairType authorFlairType;
  final String domain;
  final bool allowLiveComments;
  final String selftextHtml;
  final dynamic likes;
  final String suggestedSort;
  final dynamic bannedAtUtc;
  final dynamic viewCount;
  final bool archived;
  final bool noFollow;
  final bool isCrosspostable;
  final bool pinned;
  final bool over18;
  final List<AllAwarding> allAwardings;
  final List<dynamic> awarders;
  final bool mediaOnly;
  final bool canGild;
  final bool spoiler;
  final bool locked;
  final String authorFlairText;
  final bool visited;
  final dynamic removedBy;
  final dynamic numReports;
  final dynamic distinguished;
  final String subredditId;
  final dynamic modReasonBy;
  final dynamic removalReason;
  final LinkFlairBackgroundColor linkFlairBackgroundColor;
  final String id;
  final bool isRobotIndexable;
  final dynamic reportReasons;
  final String author;
  final dynamic discussionType;
  final dynamic numComments;
  final bool sendReplies;
  final WhitelistStatus whitelistStatus;
  final bool contestMode;
  final List<dynamic> modReports;
  final bool authorPatreonFlair;
  final FlairTextColor authorFlairTextColor;
  final String permalink;
  final WhitelistStatus parentWhitelistStatus;
  final bool stickied;
  final String url;
  final dynamic subredditSubscribers;
  final dynamic createdUtc;
  final dynamic numCrossposts;
  final Media media;
  final bool isVideo;
  final PostHdynamic postHdynamic;
  final Preview preview;
  final String linkFlairTemplateId;
  final bool authorCakeday;

  ChildData({
    this.approvedAtUtc,
    this.subreddit,
    this.selftext,
    this.authorFullname,
    this.saved,
    this.modReasonTitle,
    this.gilded,
    this.clicked,
    this.title,
    this.linkFlairRichtext,
    this.subredditNamePrefixed,
    this.hidden,
    this.pwls,
    this.linkFlairCssClass,
    this.downs,
    this.thumbnailHeight,
    this.hideScore,
    this.name,
    this.quarantine,
    this.linkFlairTextColor,
    this.authorFlairBackgroundColor,
    this.subredditType,
    this.ups,
    this.totalAwardsReceived,
    this.mediaEmbed,
    this.thumbnailWidth,
    this.authorFlairTemplateId,
    this.isOriginalContent,
    this.userReports,
    this.secureMedia,
    this.isRedditMediaDomain,
    this.isMeta,
    this.category,
    this.secureMediaEmbed,
    this.linkFlairText,
    this.canModPost,
    this.score,
    this.approvedBy,
    this.authorPremium,
    this.thumbnail,
    this.edited,
    this.authorFlairCssClass,
    this.authorFlairRichtext,
    this.gildings,
    this.contentCategories,
    this.isSelf,
    this.modNote,
    this.created,
    this.linkFlairType,
    this.wls,
    this.removedByCategory,
    this.bannedBy,
    this.authorFlairType,
    this.domain,
    this.allowLiveComments,
    this.selftextHtml,
    this.likes,
    this.suggestedSort,
    this.bannedAtUtc,
    this.viewCount,
    this.archived,
    this.noFollow,
    this.isCrosspostable,
    this.pinned,
    this.over18,
    this.allAwardings,
    this.awarders,
    this.mediaOnly,
    this.canGild,
    this.spoiler,
    this.locked,
    this.authorFlairText,
    this.visited,
    this.removedBy,
    this.numReports,
    this.distinguished,
    this.subredditId,
    this.modReasonBy,
    this.removalReason,
    this.linkFlairBackgroundColor,
    this.id,
    this.isRobotIndexable,
    this.reportReasons,
    this.author,
    this.discussionType,
    this.numComments,
    this.sendReplies,
    this.whitelistStatus,
    this.contestMode,
    this.modReports,
    this.authorPatreonFlair,
    this.authorFlairTextColor,
    this.permalink,
    this.parentWhitelistStatus,
    this.stickied,
    this.url,
    this.subredditSubscribers,
    this.createdUtc,
    this.numCrossposts,
    this.media,
    this.isVideo,
    this.postHdynamic,
    this.preview,
    this.linkFlairTemplateId,
    this.authorCakeday,
  });

  factory ChildData.fromMap(Map<String, dynamic> json) => ChildData(
        approvedAtUtc: json["approved_at_utc"],
        subreddit: json["subreddit"],
        selftext: json["selftext"],
        authorFullname: json["author_fullname"],
        saved: json["saved"],
        modReasonTitle: json["mod_reason_title"],
        gilded: json["gilded"],
        clicked: json["clicked"],
        title: json["title"],
        linkFlairRichtext: List<LinkFlairRichtext>.from(
            json["link_flair_richtext"]
                .map((x) => LinkFlairRichtext.fromMap(x))),
        subredditNamePrefixed: json["subreddit_name_prefixed"],
        hidden: json["hidden"],
        pwls: json["pwls"],
        linkFlairCssClass: json["link_flair_css_class"] == null
            ? null
            : json["link_flair_css_class"],
        downs: json["downs"],
        thumbnailHeight:
            json["thumbnail_height"] == null ? null : json["thumbnail_height"],
        hideScore: json["hide_score"],
        name: json["name"],
        quarantine: json["quarantine"],
        linkFlairTextColor:
            flairTextColorValues.map[json["link_flair_text_color"]],
        authorFlairBackgroundColor:
            json["author_flair_background_color"] == null
                ? null
                : json["author_flair_background_color"],
        subredditType: subredditTypeValues.map[json["subreddit_type"]],
        ups: json["ups"],
        totalAwardsReceived: json["total_awards_received"],
        mediaEmbed: MediaEmbed.fromMap(json["media_embed"]),
        thumbnailWidth:
            json["thumbnail_width"] == null ? null : json["thumbnail_width"],
        authorFlairTemplateId: json["author_flair_template_id"] == null
            ? null
            : json["author_flair_template_id"],
        isOriginalContent: json["is_original_content"],
        userReports: List<dynamic>.from(json["user_reports"].map((x) => x)),
        secureMedia: json["secure_media"] == null
            ? null
            : Media.fromMap(json["secure_media"]),
        isRedditMediaDomain: json["is_reddit_media_domain"],
        isMeta: json["is_meta"],
        category: json["category"],
        secureMediaEmbed: MediaEmbed.fromMap(json["secure_media_embed"]),
        linkFlairText:
            json["link_flair_text"] == null ? null : json["link_flair_text"],
        canModPost: json["can_mod_post"],
        score: json["score"],
        approvedBy: json["approved_by"],
        authorPremium: json["author_premium"],
        thumbnail: json["thumbnail"],
        edited: json["edited"],
        authorFlairCssClass: json["author_flair_css_class"] == null
            ? null
            : json["author_flair_css_class"],
        authorFlairRichtext: List<AuthorFlairRichtext>.from(
            json["author_flair_richtext"]
                .map((x) => AuthorFlairRichtext.fromMap(x))),
        gildings: Gildings.fromMap(json["gildings"]),
        contentCategories: json["content_categories"],
        isSelf: json["is_self"],
        modNote: json["mod_note"],
        created: json["created"],
        linkFlairType: authorFlairTypeValues.map[json["link_flair_type"]],
        wls: json["wls"],
        removedByCategory: json["removed_by_category"],
        bannedBy: json["banned_by"],
        authorFlairType: authorFlairTypeValues.map[json["author_flair_type"]],
        domain: json["domain"],
        allowLiveComments: json["allow_live_comments"],
        selftextHtml:
            json["selftext_html"] == null ? null : json["selftext_html"],
        likes: json["likes"],
        suggestedSort:
            json["suggested_sort"] == null ? null : json["suggested_sort"],
        bannedAtUtc: json["banned_at_utc"],
        viewCount: json["view_count"],
        archived: json["archived"],
        noFollow: json["no_follow"],
        isCrosspostable: json["is_crosspostable"],
        pinned: json["pinned"],
        over18: json["over_18"],
        allAwardings: List<AllAwarding>.from(
            json["all_awardings"].map((x) => AllAwarding.fromMap(x))),
        awarders: List<dynamic>.from(json["awarders"].map((x) => x)),
        mediaOnly: json["media_only"],
        canGild: json["can_gild"],
        spoiler: json["spoiler"],
        locked: json["locked"],
        authorFlairText: json["author_flair_text"] == null
            ? null
            : json["author_flair_text"],
        visited: json["visited"],
        removedBy: json["removed_by"],
        numReports: json["num_reports"],
        distinguished: json["distinguished"],
        subredditId: json["subreddit_id"],
        modReasonBy: json["mod_reason_by"],
        removalReason: json["removal_reason"],
        linkFlairBackgroundColor: linkFlairBackgroundColorValues
            .map[json["link_flair_background_color"]],
        id: json["id"],
        isRobotIndexable: json["is_robot_indexable"],
        reportReasons: json["report_reasons"],
        author: json["author"],
        discussionType: json["discussion_type"],
        numComments: json["num_comments"],
        sendReplies: json["send_replies"],
        whitelistStatus: whitelistStatusValues.map[json["whitelist_status"]],
        contestMode: json["contest_mode"],
        modReports: List<dynamic>.from(json["mod_reports"].map((x) => x)),
        authorPatreonFlair: json["author_patreon_flair"],
        authorFlairTextColor: json["author_flair_text_color"] == null
            ? null
            : flairTextColorValues.map[json["author_flair_text_color"]],
        permalink: json["permalink"],
        parentWhitelistStatus:
            whitelistStatusValues.map[json["parent_whitelist_status"]],
        stickied: json["stickied"],
        url: json["url"],
        subredditSubscribers: json["subreddit_subscribers"],
        createdUtc: json["created_utc"],
        numCrossposts: json["num_crossposts"],
        media: json["media"] == null ? null : Media.fromMap(json["media"]),
        isVideo: json["is_video"],
        postHdynamic: json["post_hdynamic"] == null
            ? null
            : postHdynamicValues.map[json["post_hdynamic"]],
        preview:
            json["preview"] == null ? null : Preview.fromMap(json["preview"]),
        linkFlairTemplateId: json["link_flair_template_id"] == null
            ? null
            : json["link_flair_template_id"],
        authorCakeday:
            json["author_cakeday"] == null ? null : json["author_cakeday"],
      );

  Map<String, dynamic> toMap() => {
        "approved_at_utc": approvedAtUtc,
        "subreddit": subreddit,
        "selftext": selftext,
        "author_fullname": authorFullname,
        "saved": saved,
        "mod_reason_title": modReasonTitle,
        "gilded": gilded,
        "clicked": clicked,
        "title": title,
        "link_flair_richtext":
            List<dynamic>.from(linkFlairRichtext.map((x) => x.toMap())),
        "subreddit_name_prefixed": subredditNamePrefixed,
        "hidden": hidden,
        "pwls": pwls,
        "link_flair_css_class":
            linkFlairCssClass == null ? null : linkFlairCssClass,
        "downs": downs,
        "thumbnail_height": thumbnailHeight == null ? null : thumbnailHeight,
        "hide_score": hideScore,
        "name": name,
        "quarantine": quarantine,
        "link_flair_text_color":
            flairTextColorValues.reverse[linkFlairTextColor],
        "author_flair_background_color": authorFlairBackgroundColor == null
            ? null
            : authorFlairBackgroundColor,
        "subreddit_type": subredditTypeValues.reverse[subredditType],
        "ups": ups,
        "total_awards_received": totalAwardsReceived,
        "media_embed": mediaEmbed.toMap(),
        "thumbnail_width": thumbnailWidth == null ? null : thumbnailWidth,
        "author_flair_template_id":
            authorFlairTemplateId == null ? null : authorFlairTemplateId,
        "is_original_content": isOriginalContent,
        "user_reports": List<dynamic>.from(userReports.map((x) => x)),
        "secure_media": secureMedia == null ? null : secureMedia.toMap(),
        "is_reddit_media_domain": isRedditMediaDomain,
        "is_meta": isMeta,
        "category": category,
        "secure_media_embed": secureMediaEmbed.toMap(),
        "link_flair_text": linkFlairText == null ? null : linkFlairText,
        "can_mod_post": canModPost,
        "score": score,
        "approved_by": approvedBy,
        "author_premium": authorPremium,
        "thumbnail": thumbnail,
        "edited": edited,
        "author_flair_css_class":
            authorFlairCssClass == null ? null : authorFlairCssClass,
        "author_flair_richtext":
            List<dynamic>.from(authorFlairRichtext.map((x) => x.toMap())),
        "gildings": gildings.toMap(),
        "content_categories": contentCategories,
        "is_self": isSelf,
        "mod_note": modNote,
        "created": created,
        "link_flair_type": authorFlairTypeValues.reverse[linkFlairType],
        "wls": wls,
        "removed_by_category": removedByCategory,
        "banned_by": bannedBy,
        "author_flair_type": authorFlairTypeValues.reverse[authorFlairType],
        "domain": domain,
        "allow_live_comments": allowLiveComments,
        "selftext_html": selftextHtml == null ? null : selftextHtml,
        "likes": likes,
        "suggested_sort": suggestedSort == null ? null : suggestedSort,
        "banned_at_utc": bannedAtUtc,
        "view_count": viewCount,
        "archived": archived,
        "no_follow": noFollow,
        "is_crosspostable": isCrosspostable,
        "pinned": pinned,
        "over_18": over18,
        "all_awardings": List<dynamic>.from(allAwardings.map((x) => x.toMap())),
        "awarders": List<dynamic>.from(awarders.map((x) => x)),
        "media_only": mediaOnly,
        "can_gild": canGild,
        "spoiler": spoiler,
        "locked": locked,
        "author_flair_text": authorFlairText == null ? null : authorFlairText,
        "visited": visited,
        "removed_by": removedBy,
        "num_reports": numReports,
        "distinguished": distinguished,
        "subreddit_id": subredditId,
        "mod_reason_by": modReasonBy,
        "removal_reason": removalReason,
        "link_flair_background_color":
            linkFlairBackgroundColorValues.reverse[linkFlairBackgroundColor],
        "id": id,
        "is_robot_indexable": isRobotIndexable,
        "report_reasons": reportReasons,
        "author": author,
        "discussion_type": discussionType,
        "num_comments": numComments,
        "send_replies": sendReplies,
        "whitelist_status": whitelistStatusValues.reverse[whitelistStatus],
        "contest_mode": contestMode,
        "mod_reports": List<dynamic>.from(modReports.map((x) => x)),
        "author_patreon_flair": authorPatreonFlair,
        "author_flair_text_color": authorFlairTextColor == null
            ? null
            : flairTextColorValues.reverse[authorFlairTextColor],
        "permalink": permalink,
        "parent_whitelist_status":
            whitelistStatusValues.reverse[parentWhitelistStatus],
        "stickied": stickied,
        "url": url,
        "subreddit_subscribers": subredditSubscribers,
        "created_utc": createdUtc,
        "num_crossposts": numCrossposts,
        "media": media == null ? null : media.toMap(),
        "is_video": isVideo,
        "post_hdynamic": postHdynamic == null
            ? null
            : postHdynamicValues.reverse[postHdynamic],
        "preview": preview == null ? null : preview.toMap(),
        "link_flair_template_id":
            linkFlairTemplateId == null ? null : linkFlairTemplateId,
        "author_cakeday": authorCakeday == null ? null : authorCakeday,
      };
}

class AllAwarding {
  final dynamic giverCoinReward;
  final String subredditId;
  final bool isNew;
  final dynamic daysOfDripExtension;
  final dynamic coinPrice;
  final String id;
  final dynamic pennyDonate;
  final dynamic coinReward;
  final String iconUrl;
  final dynamic daysOfPremium;
  final dynamic iconHeight;
  final List<ResizedIcon> resizedIcons;
  final dynamic iconWidth;
  final dynamic startDate;
  final bool isEnabled;
  final String description;
  final dynamic endDate;
  final dynamic subredditCoinReward;
  final dynamic count;
  final String name;
  final IconFormat iconFormat;
  final AwardSubType awardSubType;
  final dynamic pennyPrice;
  final AwardType awardType;

  AllAwarding({
    this.giverCoinReward,
    this.subredditId,
    this.isNew,
    this.daysOfDripExtension,
    this.coinPrice,
    this.id,
    this.pennyDonate,
    this.coinReward,
    this.iconUrl,
    this.daysOfPremium,
    this.iconHeight,
    this.resizedIcons,
    this.iconWidth,
    this.startDate,
    this.isEnabled,
    this.description,
    this.endDate,
    this.subredditCoinReward,
    this.count,
    this.name,
    this.iconFormat,
    this.awardSubType,
    this.pennyPrice,
    this.awardType,
  });

  factory AllAwarding.fromMap(Map<String, dynamic> json) => AllAwarding(
        giverCoinReward: json["giver_coin_reward"] == null
            ? null
            : json["giver_coin_reward"],
        subredditId: json["subreddit_id"] == null ? null : json["subreddit_id"],
        isNew: json["is_new"],
        daysOfDripExtension: json["days_of_drip_extension"],
        coinPrice: json["coin_price"],
        id: json["id"],
        pennyDonate: json["penny_donate"] == null ? null : json["penny_donate"],
        coinReward: json["coin_reward"],
        iconUrl: json["icon_url"],
        daysOfPremium: json["days_of_premium"],
        iconHeight: json["icon_height"],
        resizedIcons: List<ResizedIcon>.from(
            json["resized_icons"].map((x) => ResizedIcon.fromMap(x))),
        iconWidth: json["icon_width"],
        startDate: json["start_date"] == null ? null : json["start_date"],
        isEnabled: json["is_enabled"],
        description: json["description"],
        endDate: json["end_date"],
        subredditCoinReward: json["subreddit_coin_reward"],
        count: json["count"],
        name: json["name"],
        iconFormat: json["icon_format"] == null
            ? null
            : iconFormatValues.map[json["icon_format"]],
        awardSubType: awardSubTypeValues.map[json["award_sub_type"]],
        pennyPrice: json["penny_price"] == null ? null : json["penny_price"],
        awardType: awardTypeValues.map[json["award_type"]],
      );

  Map<String, dynamic> toMap() => {
        "giver_coin_reward": giverCoinReward == null ? null : giverCoinReward,
        "subreddit_id": subredditId == null ? null : subredditId,
        "is_new": isNew,
        "days_of_drip_extension": daysOfDripExtension,
        "coin_price": coinPrice,
        "id": id,
        "penny_donate": pennyDonate == null ? null : pennyDonate,
        "coin_reward": coinReward,
        "icon_url": iconUrl,
        "days_of_premium": daysOfPremium,
        "icon_height": iconHeight,
        "resized_icons": List<dynamic>.from(resizedIcons.map((x) => x.toMap())),
        "icon_width": iconWidth,
        "start_date": startDate == null ? null : startDate,
        "is_enabled": isEnabled,
        "description": description,
        "end_date": endDate,
        "subreddit_coin_reward": subredditCoinReward,
        "count": count,
        "name": name,
        "icon_format":
            iconFormat == null ? null : iconFormatValues.reverse[iconFormat],
        "award_sub_type": awardSubTypeValues.reverse[awardSubType],
        "penny_price": pennyPrice == null ? null : pennyPrice,
        "award_type": awardTypeValues.reverse[awardType],
      };
}

enum AwardSubType { GLOBAL, APPRECIATION, PREMIUM, COMMUNITY }

final awardSubTypeValues = EnumValues({
  "APPRECIATION": AwardSubType.APPRECIATION,
  "COMMUNITY": AwardSubType.COMMUNITY,
  "GLOBAL": AwardSubType.GLOBAL,
  "PREMIUM": AwardSubType.PREMIUM
});

enum AwardType { GLOBAL, COMMUNITY }

final awardTypeValues =
    EnumValues({"community": AwardType.COMMUNITY, "global": AwardType.GLOBAL});

enum IconFormat { PNG, APNG }

final iconFormatValues =
    EnumValues({"APNG": IconFormat.APNG, "PNG": IconFormat.PNG});

class ResizedIcon {
  final String url;
  final dynamic width;
  final dynamic height;

  ResizedIcon({
    this.url,
    this.width,
    this.height,
  });

  factory ResizedIcon.fromMap(Map<String, dynamic> json) => ResizedIcon(
        url: json["url"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toMap() => {
        "url": url,
        "width": width,
        "height": height,
      };
}

class AuthorFlairRichtext {
  final String a;
  final String e;
  final String u;
  final String t;

  AuthorFlairRichtext({
    this.a,
    this.e,
    this.u,
    this.t,
  });

  factory AuthorFlairRichtext.fromMap(Map<String, dynamic> json) =>
      AuthorFlairRichtext(
        a: json["a"] == null ? null : json["a"],
        e: json["e"],
        u: json["u"] == null ? null : json["u"],
        t: json["t"] == null ? null : json["t"],
      );

  Map<String, dynamic> toMap() => {
        "a": a == null ? null : a,
        "e": e,
        "u": u == null ? null : u,
        "t": t == null ? null : t,
      };
}

enum FlairTextColor { DARK, LIGHT }

final flairTextColorValues =
    EnumValues({"dark": FlairTextColor.DARK, "light": FlairTextColor.LIGHT});

enum AuthorFlairType { TEXT, RICHTEXT }

final authorFlairTypeValues = EnumValues(
    {"richtext": AuthorFlairType.RICHTEXT, "text": AuthorFlairType.TEXT});

class Gildings {
  final dynamic gid1;
  final dynamic gid2;
  final dynamic gid3;

  Gildings({
    this.gid1,
    this.gid2,
    this.gid3,
  });

  factory Gildings.fromMap(Map<String, dynamic> json) => Gildings(
        gid1: json["gid_1"] == null ? null : json["gid_1"],
        gid2: json["gid_2"] == null ? null : json["gid_2"],
        gid3: json["gid_3"] == null ? null : json["gid_3"],
      );

  Map<String, dynamic> toMap() => {
        "gid_1": gid1 == null ? null : gid1,
        "gid_2": gid2 == null ? null : gid2,
        "gid_3": gid3 == null ? null : gid3,
      };
}

enum LinkFlairBackgroundColor { EMPTY, THE_536_DFE, FF66_AC }

final linkFlairBackgroundColorValues = EnumValues({
  "": LinkFlairBackgroundColor.EMPTY,
  "#ff66ac": LinkFlairBackgroundColor.FF66_AC,
  "#536dfe": LinkFlairBackgroundColor.THE_536_DFE
});

class LinkFlairRichtext {
  final AuthorFlairType e;
  final String t;

  LinkFlairRichtext({
    this.e,
    this.t,
  });

  factory LinkFlairRichtext.fromMap(Map<String, dynamic> json) =>
      LinkFlairRichtext(
        e: authorFlairTypeValues.map[json["e"]],
        t: json["t"],
      );

  Map<String, dynamic> toMap() => {
        "e": authorFlairTypeValues.reverse[e],
        "t": t,
      };
}

class Media {
  final RedditVideo redditVideo;
  final Oembed oembed;
  final String type;

  Media({
    this.redditVideo,
    this.oembed,
    this.type,
  });

  factory Media.fromMap(Map<String, dynamic> json) => Media(
        redditVideo: json["reddit_video"] == null
            ? null
            : RedditVideo.fromMap(json["reddit_video"]),
        oembed: json["oembed"] == null ? null : Oembed.fromMap(json["oembed"]),
        type: json["type"] == null ? null : json["type"],
      );

  Map<String, dynamic> toMap() => {
        "reddit_video": redditVideo == null ? null : redditVideo.toMap(),
        "oembed": oembed == null ? null : oembed.toMap(),
        "type": type == null ? null : type,
      };
}

class Oembed {
  final String providerUrl;
  final String title;
  final String html;
  final dynamic thumbnailWidth;
  final dynamic height;
  final dynamic width;
  final String version;
  final String authorName;
  final String providerName;
  final String thumbnailUrl;
  final String type;
  final dynamic thumbnailHeight;
  final String authorUrl;

  Oembed({
    this.providerUrl,
    this.title,
    this.html,
    this.thumbnailWidth,
    this.height,
    this.width,
    this.version,
    this.authorName,
    this.providerName,
    this.thumbnailUrl,
    this.type,
    this.thumbnailHeight,
    this.authorUrl,
  });

  factory Oembed.fromMap(Map<String, dynamic> json) => Oembed(
        providerUrl: json["provider_url"],
        title: json["title"],
        html: json["html"],
        thumbnailWidth: json["thumbnail_width"],
        height: json["height"],
        width: json["width"],
        version: json["version"],
        authorName: json["author_name"],
        providerName: json["provider_name"],
        thumbnailUrl: json["thumbnail_url"],
        type: json["type"],
        thumbnailHeight: json["thumbnail_height"],
        authorUrl: json["author_url"],
      );

  Map<String, dynamic> toMap() => {
        "provider_url": providerUrl,
        "title": title,
        "html": html,
        "thumbnail_width": thumbnailWidth,
        "height": height,
        "width": width,
        "version": version,
        "author_name": authorName,
        "provider_name": providerName,
        "thumbnail_url": thumbnailUrl,
        "type": type,
        "thumbnail_height": thumbnailHeight,
        "author_url": authorUrl,
      };
}

class RedditVideo {
  final String fallbackUrl;
  final dynamic height;
  final dynamic width;
  final String scrubberMediaUrl;
  final String dashUrl;
  final dynamic duration;
  final String hlsUrl;
  final bool isGif;
  final TranscodingStatus transcodingStatus;

  RedditVideo({
    this.fallbackUrl,
    this.height,
    this.width,
    this.scrubberMediaUrl,
    this.dashUrl,
    this.duration,
    this.hlsUrl,
    this.isGif,
    this.transcodingStatus,
  });

  factory RedditVideo.fromMap(Map<String, dynamic> json) => RedditVideo(
        fallbackUrl: json["fallback_url"],
        height: json["height"],
        width: json["width"],
        scrubberMediaUrl: json["scrubber_media_url"],
        dashUrl: json["dash_url"],
        duration: json["duration"],
        hlsUrl: json["hls_url"],
        isGif: json["is_gif"],
        transcodingStatus:
            transcodingStatusValues.map[json["transcoding_status"]],
      );

  Map<String, dynamic> toMap() => {
        "fallback_url": fallbackUrl,
        "height": height,
        "width": width,
        "scrubber_media_url": scrubberMediaUrl,
        "dash_url": dashUrl,
        "duration": duration,
        "hls_url": hlsUrl,
        "is_gif": isGif,
        "transcoding_status":
            transcodingStatusValues.reverse[transcodingStatus],
      };
}

enum TranscodingStatus { COMPLETED }

final transcodingStatusValues =
    EnumValues({"completed": TranscodingStatus.COMPLETED});

class MediaEmbed {
  final String content;
  final dynamic width;
  final bool scrolling;
  final dynamic height;
  final String mediaDomainUrl;

  MediaEmbed({
    this.content,
    this.width,
    this.scrolling,
    this.height,
    this.mediaDomainUrl,
  });

  factory MediaEmbed.fromMap(Map<String, dynamic> json) => MediaEmbed(
        content: json["content"] == null ? null : json["content"],
        width: json["width"] == null ? null : json["width"],
        scrolling: json["scrolling"] == null ? null : json["scrolling"],
        height: json["height"] == null ? null : json["height"],
        mediaDomainUrl:
            json["media_domain_url"] == null ? null : json["media_domain_url"],
      );

  Map<String, dynamic> toMap() => {
        "content": content == null ? null : content,
        "width": width == null ? null : width,
        "scrolling": scrolling == null ? null : scrolling,
        "height": height == null ? null : height,
        "media_domain_url": mediaDomainUrl == null ? null : mediaDomainUrl,
      };
}

enum WhitelistStatus { ALL_ADS, NO_ADS, PROMO_ADULT_NSFW }

final whitelistStatusValues = EnumValues({
  "all_ads": WhitelistStatus.ALL_ADS,
  "no_ads": WhitelistStatus.NO_ADS,
  "promo_adult_nsfw": WhitelistStatus.PROMO_ADULT_NSFW
});

enum PostHdynamic { LINK, HOSTED_VIDEO, RICH_VIDEO, IMAGE }

final postHdynamicValues = EnumValues({
  "hosted:video": PostHdynamic.HOSTED_VIDEO,
  "image": PostHdynamic.IMAGE,
  "link": PostHdynamic.LINK,
  "rich:video": PostHdynamic.RICH_VIDEO
});

class Preview {
  final List<Image> images;
  final bool enabled;
  final RedditVideo redditVideoPreview;

  Preview({
    this.images,
    this.enabled,
    this.redditVideoPreview,
  });

  factory Preview.fromMap(Map<String, dynamic> json) => Preview(
        images: List<Image>.from(json["images"].map((x) => Image.fromMap(x))),
        enabled: json["enabled"],
        redditVideoPreview: json["reddit_video_preview"] == null
            ? null
            : RedditVideo.fromMap(json["reddit_video_preview"]),
      );

  Map<String, dynamic> toMap() => {
        "images": List<dynamic>.from(images.map((x) => x.toMap())),
        "enabled": enabled,
        "reddit_video_preview":
            redditVideoPreview == null ? null : redditVideoPreview.toMap(),
      };
}

class Image {
  final ResizedIcon source;
  final List<ResizedIcon> resolutions;
  final Variants variants;
  final String id;

  Image({
    this.source,
    this.resolutions,
    this.variants,
    this.id,
  });

  factory Image.fromMap(Map<String, dynamic> json) => Image(
        source: ResizedIcon.fromMap(json["source"]),
        resolutions: List<ResizedIcon>.from(
            json["resolutions"].map((x) => ResizedIcon.fromMap(x))),
        variants: Variants.fromMap(json["variants"]),
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "source": source.toMap(),
        "resolutions": List<dynamic>.from(resolutions.map((x) => x.toMap())),
        "variants": variants.toMap(),
        "id": id,
      };
}

class Variants {
  final Gif obfuscated;
  final Gif nsfw;
  final Gif gif;
  final Gif mp4;

  Variants({
    this.obfuscated,
    this.nsfw,
    this.gif,
    this.mp4,
  });

  factory Variants.fromMap(Map<String, dynamic> json) => Variants(
        obfuscated:
            json["obfuscated"] == null ? null : Gif.fromMap(json["obfuscated"]),
        nsfw: json["nsfw"] == null ? null : Gif.fromMap(json["nsfw"]),
        gif: json["gif"] == null ? null : Gif.fromMap(json["gif"]),
        mp4: json["mp4"] == null ? null : Gif.fromMap(json["mp4"]),
      );

  Map<String, dynamic> toMap() => {
        "obfuscated": obfuscated == null ? null : obfuscated.toMap(),
        "nsfw": nsfw == null ? null : nsfw.toMap(),
        "gif": gif == null ? null : gif.toMap(),
        "mp4": mp4 == null ? null : mp4.toMap(),
      };
}

class Gif {
  final ResizedIcon source;
  final List<ResizedIcon> resolutions;

  Gif({
    this.source,
    this.resolutions,
  });

  factory Gif.fromMap(Map<String, dynamic> json) => Gif(
        source: ResizedIcon.fromMap(json["source"]),
        resolutions: List<ResizedIcon>.from(
            json["resolutions"].map((x) => ResizedIcon.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "source": source.toMap(),
        "resolutions": List<dynamic>.from(resolutions.map((x) => x.toMap())),
      };
}

enum SubredditType { PUBLIC }

final subredditTypeValues = EnumValues({"public": SubredditType.PUBLIC});

enum Kind { T3 }

final kindValues = EnumValues({"t3": Kind.T3});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
