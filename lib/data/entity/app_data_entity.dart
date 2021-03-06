class AppDataEntity {
  late List<Background> defaultBackgrounds;
  late List<Steam> steams;
  late Config config;
  late int expiresAfter;

  AppDataEntity.fromJson(Map<String, dynamic> json) {
    defaultBackgrounds = <Background>[];
    json['default_backgrounds'].forEach((v) {
      defaultBackgrounds.add(Background.fromJson(v));
    });
    steams = <Steam>[];
    json['steams'].forEach((v) {
      steams.add(Steam.fromJson(v));
    });
    config = Config.fromJson(json['config']);
    expiresAfter = json['expires_after'] as int;
  }

  Map<String, dynamic> toJson() => {
        'default_backgrounds':
            defaultBackgrounds.map((v) => v.toJson()).toList(),
        'steams': steams.map((v) => v.toJson()).toList(),
        'config': config.toJson(),
        'expires_after': expiresAfter,
      };
}

class Background {
  late String slug;
  late String name;
  late String image;
  late String thumbnail;

  Background.fromJson(Map<String, dynamic> json) {
    slug = json['slug'];
    name = json['name'];
    image = json['image'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() => {
        'slug': slug,
        'name': name,
        'image': image,
        'thumbnail': thumbnail,
      };
}

class Steam {
  late String slug;
  late String landscape;
  late String portrait;
  late String thumbnail;

  Steam.fromJson(Map<String, dynamic> json) {
    slug = json['slug'];
    landscape = json['landscape'];
    portrait = json['portrait'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() => {
        'slug': slug,
        'landscape': landscape,
        'portrait': portrait,
        'thumbnail': thumbnail,
      };
}

class Config {
  late String instagramId;

  Config.fromJson(Map<String, dynamic> json) {
    instagramId = json['instagram_id'];
  }

  Map<String, dynamic> toJson() => {
        'instagram_id': instagramId,
      };
}
