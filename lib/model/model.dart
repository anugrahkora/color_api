// To parse this JSON data, do
//
//     final colorApi = colorApiFromJson(jsonString);

import 'dart:convert';

ColorModel colorApiFromJson(String str) => ColorModel.fromJson(json.decode(str));

String colorApiToJson(ColorModel data) => json.encode(data.toJson());

class ColorModel {
    ColorModel({
        this.hex,
        this.rgb,
        this.hsl,
        this.hsv,
        this.name,
        this.cmyk,
        this.xyz,
        this.image,
        this.contrast,
        this.links,
        this.embedded,
    });

    final Hex hex;
    final Rgb rgb;
    final Hsl hsl;
    final Hsv hsv;
    final Name name;
    final Cmyk cmyk;
    final Xyz xyz;
    final Image image;
    final Contrast contrast;
    final Links links;
    final Embedded embedded;

    factory ColorModel.fromJson(Map<String, dynamic> json) => ColorModel(
        hex: Hex.fromJson(json["hex"]),
        rgb: Rgb.fromJson(json["rgb"]),
        hsl: Hsl.fromJson(json["hsl"]),
        hsv: Hsv.fromJson(json["hsv"]),
        name: Name.fromJson(json["name"]),
        cmyk: Cmyk.fromJson(json["cmyk"]),
        xyz: Xyz.fromJson(json["XYZ"]),
        image: Image.fromJson(json["image"]),
        contrast: Contrast.fromJson(json["contrast"]),
        links: Links.fromJson(json["_links"]),
        embedded: Embedded.fromJson(json["_embedded"]),
    );

    Map<String, dynamic> toJson() => {
        "hex": hex.toJson(),
        "rgb": rgb.toJson(),
        "hsl": hsl.toJson(),
        "hsv": hsv.toJson(),
        "name": name.toJson(),
        "cmyk": cmyk.toJson(),
        "XYZ": xyz.toJson(),
        "image": image.toJson(),
        "contrast": contrast.toJson(),
        "_links": links.toJson(),
        "_embedded": embedded.toJson(),
    };
}

class Cmyk {
    Cmyk({
        this.fraction,
        this.value,
        this.c,
        this.m,
        this.y,
        this.k,
    });

    final CmykFraction fraction;
    final String value;
    final int c;
    final int m;
    final int y;
    final int k;

    factory Cmyk.fromJson(Map<String, dynamic> json) => Cmyk(
        fraction: CmykFraction.fromJson(json["fraction"]),
        value: json["value"],
        c: json["c"],
        m: json["m"],
        y: json["y"],
        k: json["k"],
    );

    Map<String, dynamic> toJson() => {
        "fraction": fraction.toJson(),
        "value": value,
        "c": c,
        "m": m,
        "y": y,
        "k": k,
    };
}

class CmykFraction {
    CmykFraction({
        this.c,
        this.m,
        this.y,
        this.k,
    });

    final double c;
    final double m;
    final int y;
    final double k;

    factory CmykFraction.fromJson(Map<String, dynamic> json) => CmykFraction(
        c: json["c"].toDouble(),
        m: json["m"].toDouble(),
        y: json["y"],
        k: json["k"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "c": c,
        "m": m,
        "y": y,
        "k": k,
    };
}

class Contrast {
    Contrast({
        this.value,
    });

    final String value;

    factory Contrast.fromJson(Map<String, dynamic> json) => Contrast(
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "value": value,
    };
}

class Embedded {
    Embedded();

    factory Embedded.fromJson(Map<String, dynamic> json) => Embedded(
    );

    Map<String, dynamic> toJson() => {
    };
}

class Hex {
    Hex({
        this.value,
        this.clean,
    });

    final String value;
    final String clean;

    factory Hex.fromJson(Map<String, dynamic> json) => Hex(
        value: json["value"],
        clean: json["clean"],
    );

    Map<String, dynamic> toJson() => {
        "value": value,
        "clean": clean,
    };
}

class Hsl {
    Hsl({
        this.fraction,
        this.h,
        this.s,
        this.l,
        this.value,
    });

    final HslFraction fraction;
    final int h;
    final int s;
    final int l;
    final String value;

    factory Hsl.fromJson(Map<String, dynamic> json) => Hsl(
        fraction: HslFraction.fromJson(json["fraction"]),
        h: json["h"],
        s: json["s"],
        l: json["l"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "fraction": fraction.toJson(),
        "h": h,
        "s": s,
        "l": l,
        "value": value,
    };
}

class HslFraction {
    HslFraction({
        this.h,
        this.s,
        this.l,
    });

    final double h;
    final double s;
    final double l;

    factory HslFraction.fromJson(Map<String, dynamic> json) => HslFraction(
        h: json["h"].toDouble(),
        s: json["s"].toDouble(),
        l: json["l"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "h": h,
        "s": s,
        "l": l,
    };
}

class Hsv {
    Hsv({
        this.fraction,
        this.value,
        this.h,
        this.s,
        this.v,
    });

    final HsvFraction fraction;
    final String value;
    final int h;
    final int s;
    final int v;

    factory Hsv.fromJson(Map<String, dynamic> json) => Hsv(
        fraction: HsvFraction.fromJson(json["fraction"]),
        value: json["value"],
        h: json["h"],
        s: json["s"],
        v: json["v"],
    );

    Map<String, dynamic> toJson() => {
        "fraction": fraction.toJson(),
        "value": value,
        "h": h,
        "s": s,
        "v": v,
    };
}

class HsvFraction {
    HsvFraction({
        this.h,
        this.s,
        this.v,
    });

    final double h;
    final double s;
    final double v;

    factory HsvFraction.fromJson(Map<String, dynamic> json) => HsvFraction(
        h: json["h"].toDouble(),
        s: json["s"].toDouble(),
        v: json["v"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "h": h,
        "s": s,
        "v": v,
    };
}

class Image {
    Image({
        this.bare,
        this.named,
    });

    final String bare;
    final String named;

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        bare: json["bare"],
        named: json["named"],
    );

    Map<String, dynamic> toJson() => {
        "bare": bare,
        "named": named,
    };
}

class Links {
    Links({
        this.self,
    });

    final Self self;

    factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: Self.fromJson(json["self"]),
    );

    Map<String, dynamic> toJson() => {
        "self": self.toJson(),
    };
}

class Self {
    Self({
        this.href,
    });

    final String href;

    factory Self.fromJson(Map<String, dynamic> json) => Self(
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "href": href,
    };
}

class Name {
    Name({
        this.value,
        this.closestNamedHex,
        this.exactMatchName,
        this.distance,
    });

    final String value;
    final String closestNamedHex;
    final bool exactMatchName;
    final int distance;

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        value: json["value"],
        closestNamedHex: json["closest_named_hex"],
        exactMatchName: json["exact_match_name"],
        distance: json["distance"],
    );

    Map<String, dynamic> toJson() => {
        "value": value,
        "closest_named_hex": closestNamedHex,
        "exact_match_name": exactMatchName,
        "distance": distance,
    };
}

class Rgb {
    Rgb({
        this.fraction,
        this.r,
        this.g,
        this.b,
        this.value,
    });

    final RgbFraction fraction;
    final int r;
    final int g;
    final int b;
    final String value;

    factory Rgb.fromJson(Map<String, dynamic> json) => Rgb(
        fraction: RgbFraction.fromJson(json["fraction"]),
        r: json["r"],
        g: json["g"],
        b: json["b"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "fraction": fraction.toJson(),
        "r": r,
        "g": g,
        "b": b,
        "value": value,
    };
}

class RgbFraction {
    RgbFraction({
        this.r,
        this.g,
        this.b,
    });

    final double r;
    final double g;
    final double b;

    factory RgbFraction.fromJson(Map<String, dynamic> json) => RgbFraction(
        r: json["r"].toDouble(),
        g: json["g"].toDouble(),
        b: json["b"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "r": r,
        "g": g,
        "b": b,
    };
}

class Xyz {
    Xyz({
        this.fraction,
        this.value,
        this.x,
        this.y,
        this.z,
    });

    final XyzFraction fraction;
    final String value;
    final int x;
    final int y;
    final int z;

    factory Xyz.fromJson(Map<String, dynamic> json) => Xyz(
        fraction: XyzFraction.fromJson(json["fraction"]),
        value: json["value"],
        x: json["X"],
        y: json["Y"],
        z: json["Z"],
    );

    Map<String, dynamic> toJson() => {
        "fraction": fraction.toJson(),
        "value": value,
        "X": x,
        "Y": y,
        "Z": z,
    };
}

class XyzFraction {
    XyzFraction({
        this.x,
        this.y,
        this.z,
    });

    final double x;
    final double y;
    final double z;

    factory XyzFraction.fromJson(Map<String, dynamic> json) => XyzFraction(
        x: json["X"].toDouble(),
        y: json["Y"].toDouble(),
        z: json["Z"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "X": x,
        "Y": y,
        "Z": z,
    };
}
