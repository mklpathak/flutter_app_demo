// To parse this JSON data, do
//
//     final redditFeed = redditFeedFromJson(jsonString);

import 'dart:convert';

RedditFeed redditFeedFromJson(String str) =>
    RedditFeed.fromMap(json.decode(str));

String redditFeedToJson(RedditFeed data) => json.encode(data.toMap());

class RedditFeed {
  final String kind;
  final Data data;

  RedditFeed({
    this.kind,
    this.data,
  });

  factory RedditFeed.fromMap(Map<String, dynamic> json) => RedditFeed(
        kind: json["kind"],
        data: Data.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "kind": kind,
        "data": data.toMap(),
      };
}

class Data {
  final dynamic approvedAtUtc;
  final String subreddit;
  final String selftext;
  final String authorFullname;
  final bool saved;
  final dynamic modReasonTitle;
  final int gilded;
  final bool clicked;
  final String title;
  final List<dynamic> linkFlairRichtext;
  final String subredditNamePrefixed;
  final bool hidden;
  final int pwls;
  final dynamic linkFlairCssClass;
  final int downs;
  final dynamic thumbnailHeight;
  final bool hideScore;
  final String name;
  final bool quarantine;
  final String linkFlairTextColor;
  final dynamic authorFlairBackgroundColor;
  final String subredditType;
  final int ups;
  final int totalAwardsReceived;
  final MediaEmbed mediaEmbed;
  final dynamic thumbnailWidth;
  final dynamic authorFlairTemplateId;
  final bool isOriginalContent;
  final List<dynamic> userReports;
  final dynamic secureMedia;
  final bool isRedditMediaDomain;
  final bool isMeta;
  final dynamic category;
  final MediaEmbed secureMediaEmbed;
  final dynamic linkFlairText;
  final bool canModPost;
  final int score;
  final dynamic approvedBy;
  final bool authorPremium;
  final String thumbnail;
  final bool edited;
  final dynamic authorFlairCssClass;
  final List<dynamic> authorFlairRichtext;
  final Gildings gildings;
  final dynamic contentCategories;
  final bool isSelf;
  final dynamic modNote;
  final int created;
  final String linkFlairType;
  final int wls;
  final dynamic removedByCategory;
  final dynamic bannedBy;
  final String authorFlairType;
  final String domain;
  final bool allowLiveComments;
  final dynamic selftextHtml;
  final dynamic likes;
  final dynamic suggestedSort;
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
  final dynamic authorFlairText;
  final bool visited;
  final dynamic removedBy;
  final dynamic numReports;
  final dynamic distinguished;
  final String subredditId;
  final dynamic modReasonBy;
  final dynamic removalReason;
  final String linkFlairBackgroundColor;
  final String id;
  final bool isRobotIndexable;
  final dynamic reportReasons;
  final String author;
  final dynamic discussionType;
  final int numComments;
  final bool sendReplies;
  final String whitelistStatus;
  final bool contestMode;
  final List<dynamic> modReports;
  final bool authorPatreonFlair;
  final dynamic authorFlairTextColor;
  final String permalink;
  final String parentWhitelistStatus;
  final bool stickied;
  final String url;
  final int subredditSubscribers;
  final int createdUtc;
  final int numCrossposts;
  final dynamic media;
  final bool isVideo;

  Data({
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
  });

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        approvedAtUtc: json["approved_at_utc"],
        subreddit: json["subreddit"],
        selftext: json["selftext"],
        authorFullname: json["author_fullname"],
        saved: json["saved"],
        modReasonTitle: json["mod_reason_title"],
        gilded: json["gilded"],
        clicked: json["clicked"],
        title: json["title"],
        linkFlairRichtext:
            List<dynamic>.from(json["link_flair_richtext"].map((x) => x)),
        subredditNamePrefixed: json["subreddit_name_prefixed"],
        hidden: json["hidden"],
        pwls: json["pwls"],
        linkFlairCssClass: json["link_flair_css_class"],
        downs: json["downs"],
        thumbnailHeight: json["thumbnail_height"],
        hideScore: json["hide_score"],
        name: json["name"],
        quarantine: json["quarantine"],
        linkFlairTextColor: json["link_flair_text_color"],
        authorFlairBackgroundColor: json["author_flair_background_color"],
        subredditType: json["subreddit_type"],
        ups: json["ups"],
        totalAwardsReceived: json["total_awards_received"],
        mediaEmbed: MediaEmbed.fromMap(json["media_embed"]),
        thumbnailWidth: json["thumbnail_width"],
        authorFlairTemplateId: json["author_flair_template_id"],
        isOriginalContent: json["is_original_content"],
        userReports: List<dynamic>.from(json["user_reports"].map((x) => x)),
        secureMedia: json["secure_media"],
        isRedditMediaDomain: json["is_reddit_media_domain"],
        isMeta: json["is_meta"],
        category: json["category"],
        secureMediaEmbed: MediaEmbed.fromMap(json["secure_media_embed"]),
        linkFlairText: json["link_flair_text"],
        canModPost: json["can_mod_post"],
        score: json["score"],
        approvedBy: json["approved_by"],
        authorPremium: json["author_premium"],
        thumbnail: json["thumbnail"],
        edited: json["edited"],
        authorFlairCssClass: json["author_flair_css_class"],
        authorFlairRichtext:
            List<dynamic>.from(json["author_flair_richtext"].map((x) => x)),
        gildings: Gildings.fromMap(json["gildings"]),
        contentCategories: json["content_categories"],
        isSelf: json["is_self"],
        modNote: json["mod_note"],
        created: json["created"],
        linkFlairType: json["link_flair_type"],
        wls: json["wls"],
        removedByCategory: json["removed_by_category"],
        bannedBy: json["banned_by"],
        authorFlairType: json["author_flair_type"],
        domain: json["domain"],
        allowLiveComments: json["allow_live_comments"],
        selftextHtml: json["selftext_html"],
        likes: json["likes"],
        suggestedSort: json["suggested_sort"],
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
        authorFlairText: json["author_flair_text"],
        visited: json["visited"],
        removedBy: json["removed_by"],
        numReports: json["num_reports"],
        distinguished: json["distinguished"],
        subredditId: json["subreddit_id"],
        modReasonBy: json["mod_reason_by"],
        removalReason: json["removal_reason"],
        linkFlairBackgroundColor: json["link_flair_background_color"],
        id: json["id"],
        isRobotIndexable: json["is_robot_indexable"],
        reportReasons: json["report_reasons"],
        author: json["author"],
        discussionType: json["discussion_type"],
        numComments: json["num_comments"],
        sendReplies: json["send_replies"],
        whitelistStatus: json["whitelist_status"],
        contestMode: json["contest_mode"],
        modReports: List<dynamic>.from(json["mod_reports"].map((x) => x)),
        authorPatreonFlair: json["author_patreon_flair"],
        authorFlairTextColor: json["author_flair_text_color"],
        permalink: json["permalink"],
        parentWhitelistStatus: json["parent_whitelist_status"],
        stickied: json["stickied"],
        url: json["url"],
        subredditSubscribers: json["subreddit_subscribers"],
        createdUtc: json["created_utc"],
        numCrossposts: json["num_crossposts"],
        media: json["media"],
        isVideo: json["is_video"],
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
            List<dynamic>.from(linkFlairRichtext.map((x) => x)),
        "subreddit_name_prefixed": subredditNamePrefixed,
        "hidden": hidden,
        "pwls": pwls,
        "link_flair_css_class": linkFlairCssClass,
        "downs": downs,
        "thumbnail_height": thumbnailHeight,
        "hide_score": hideScore,
        "name": name,
        "quarantine": quarantine,
        "link_flair_text_color": linkFlairTextColor,
        "author_flair_background_color": authorFlairBackgroundColor,
        "subreddit_type": subredditType,
        "ups": ups,
        "total_awards_received": totalAwardsReceived,
        "media_embed": mediaEmbed.toMap(),
        "thumbnail_width": thumbnailWidth,
        "author_flair_template_id": authorFlairTemplateId,
        "is_original_content": isOriginalContent,
        "user_reports": List<dynamic>.from(userReports.map((x) => x)),
        "secure_media": secureMedia,
        "is_reddit_media_domain": isRedditMediaDomain,
        "is_meta": isMeta,
        "category": category,
        "secure_media_embed": secureMediaEmbed.toMap(),
        "link_flair_text": linkFlairText,
        "can_mod_post": canModPost,
        "score": score,
        "approved_by": approvedBy,
        "author_premium": authorPremium,
        "thumbnail": thumbnail,
        "edited": edited,
        "author_flair_css_class": authorFlairCssClass,
        "author_flair_richtext":
            List<dynamic>.from(authorFlairRichtext.map((x) => x)),
        "gildings": gildings.toMap(),
        "content_categories": contentCategories,
        "is_self": isSelf,
        "mod_note": modNote,
        "created": created,
        "link_flair_type": linkFlairType,
        "wls": wls,
        "removed_by_category": removedByCategory,
        "banned_by": bannedBy,
        "author_flair_type": authorFlairType,
        "domain": domain,
        "allow_live_comments": allowLiveComments,
        "selftext_html": selftextHtml,
        "likes": likes,
        "suggested_sort": suggestedSort,
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
        "author_flair_text": authorFlairText,
        "visited": visited,
        "removed_by": removedBy,
        "num_reports": numReports,
        "distinguished": distinguished,
        "subreddit_id": subredditId,
        "mod_reason_by": modReasonBy,
        "removal_reason": removalReason,
        "link_flair_background_color": linkFlairBackgroundColor,
        "id": id,
        "is_robot_indexable": isRobotIndexable,
        "report_reasons": reportReasons,
        "author": author,
        "discussion_type": discussionType,
        "num_comments": numComments,
        "send_replies": sendReplies,
        "whitelist_status": whitelistStatus,
        "contest_mode": contestMode,
        "mod_reports": List<dynamic>.from(modReports.map((x) => x)),
        "author_patreon_flair": authorPatreonFlair,
        "author_flair_text_color": authorFlairTextColor,
        "permalink": permalink,
        "parent_whitelist_status": parentWhitelistStatus,
        "stickied": stickied,
        "url": url,
        "subreddit_subscribers": subredditSubscribers,
        "created_utc": createdUtc,
        "num_crossposts": numCrossposts,
        "media": media,
        "is_video": isVideo,
      };
}

class AllAwarding {
  final int giverCoinReward;
  final dynamic subredditId;
  final bool isNew;
  final int daysOfDripExtension;
  final int coinPrice;
  final String id;
  final int pennyDonate;
  final int coinReward;
  final String iconUrl;
  final int daysOfPremium;
  final int iconHeight;
  final List<ResizedIcon> resizedIcons;
  final int iconWidth;
  final dynamic startDate;
  final bool isEnabled;
  final String description;
  final dynamic endDate;
  final int subredditCoinReward;
  final int count;
  final String name;
  final String iconFormat;
  final String awardSubType;
  final int pennyPrice;
  final String awardType;

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
        subredditId: json["subreddit_id"],
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
        startDate: json["start_date"],
        isEnabled: json["is_enabled"],
        description: json["description"],
        endDate: json["end_date"],
        subredditCoinReward: json["subreddit_coin_reward"],
        count: json["count"],
        name: json["name"],
        iconFormat: json["icon_format"] == null ? null : json["icon_format"],
        awardSubType: json["award_sub_type"],
        pennyPrice: json["penny_price"] == null ? null : json["penny_price"],
        awardType: json["award_type"],
      );

  Map<String, dynamic> toMap() => {
        "giver_coin_reward": giverCoinReward == null ? null : giverCoinReward,
        "subreddit_id": subredditId,
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
        "start_date": startDate,
        "is_enabled": isEnabled,
        "description": description,
        "end_date": endDate,
        "subreddit_coin_reward": subredditCoinReward,
        "count": count,
        "name": name,
        "icon_format": iconFormat == null ? null : iconFormat,
        "award_sub_type": awardSubType,
        "penny_price": pennyPrice == null ? null : pennyPrice,
        "award_type": awardType,
      };
}

class ResizedIcon {
  final String url;
  final int width;
  final int height;

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

class Gildings {
  final int gid1;
  final int gid2;

  Gildings({
    this.gid1,
    this.gid2,
  });

  factory Gildings.fromMap(Map<String, dynamic> json) => Gildings(
        gid1: json["gid_1"],
        gid2: json["gid_2"],
      );

  Map<String, dynamic> toMap() => {
        "gid_1": gid1,
        "gid_2": gid2,
      };
}

class MediaEmbed {
  MediaEmbed();

  factory MediaEmbed.fromMap(Map<String, dynamic> json) => MediaEmbed();

  Map<String, dynamic> toMap() => {};
}
