/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/add-post.png
  AssetGenImage get addPost => const AssetGenImage('assets/icons/add-post.png');

  /// File path: assets/icons/add.png
  AssetGenImage get add => const AssetGenImage('assets/icons/add.png');

  /// File path: assets/icons/chat.svg
  SvgGenImage get chat => const SvgGenImage('assets/icons/chat.svg');

  /// File path: assets/icons/date.svg
  SvgGenImage get date => const SvgGenImage('assets/icons/date.svg');

  /// File path: assets/icons/dots.svg
  SvgGenImage get dots => const SvgGenImage('assets/icons/dots.svg');

  /// File path: assets/icons/file.png
  AssetGenImage get file => const AssetGenImage('assets/icons/file.png');

  /// File path: assets/icons/forum.svg
  SvgGenImage get forum => const SvgGenImage('assets/icons/forum.svg');

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/members.svg
  SvgGenImage get members => const SvgGenImage('assets/icons/members.svg');

  /// File path: assets/icons/mitra.png
  AssetGenImage get mitra => const AssetGenImage('assets/icons/mitra.png');

  /// File path: assets/icons/name_project.svg
  SvgGenImage get nameProject =>
      const SvgGenImage('assets/icons/name_project.svg');

  /// File path: assets/icons/profile.svg
  SvgGenImage get profile => const SvgGenImage('assets/icons/profile.svg');

  /// File path: assets/icons/projects.png
  AssetGenImage get projects =>
      const AssetGenImage('assets/icons/projects.png');

  /// File path: assets/icons/schedule.svg
  SvgGenImage get schedule => const SvgGenImage('assets/icons/schedule.svg');

  /// List of all assets
  List<dynamic> get values => [
        addPost,
        add,
        chat,
        date,
        dots,
        file,
        forum,
        home,
        members,
        mitra,
        nameProject,
        profile,
        projects,
        schedule
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/banner1.png
  AssetGenImage get banner1 => const AssetGenImage('assets/images/banner1.png');

  /// File path: assets/images/ornamen_card_1.png
  AssetGenImage get ornamenCard1 =>
      const AssetGenImage('assets/images/ornamen_card_1.png');

  /// File path: assets/images/ornamen_card_2.png
  AssetGenImage get ornamenCard2 =>
      const AssetGenImage('assets/images/ornamen_card_2.png');

  /// File path: assets/images/ornamen_header.png
  AssetGenImage get ornamenHeader =>
      const AssetGenImage('assets/images/ornamen_header.png');

  /// File path: assets/images/project_dashboard.png
  AssetGenImage get projectDashboard =>
      const AssetGenImage('assets/images/project_dashboard.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [banner1, ornamenCard1, ornamenCard2, ornamenHeader, projectDashboard];
}

class $AssetsLogoGen {
  const $AssetsLogoGen();

  /// File path: assets/logo/logo_unpak.png
  AssetGenImage get logoUnpak =>
      const AssetGenImage('assets/logo/logo_unpak.png');

  /// File path: assets/logo/logo_white.png
  AssetGenImage get logoWhitePng =>
      const AssetGenImage('assets/logo/logo_white.png');

  /// File path: assets/logo/logo_white.svg
  SvgGenImage get logoWhiteSvg =>
      const SvgGenImage('assets/logo/logo_white.svg');

  /// List of all assets
  List<dynamic> get values => [logoUnpak, logoWhitePng, logoWhiteSvg];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/add.svg
  SvgGenImage get add => const SvgGenImage('assets/svg/add.svg');

  /// File path: assets/svg/man.svg
  SvgGenImage get man => const SvgGenImage('assets/svg/man.svg');

  /// File path: assets/svg/onBoarding_1.svg
  SvgGenImage get onBoarding1 =>
      const SvgGenImage('assets/svg/onBoarding_1.svg');

  /// File path: assets/svg/onBoarding_2.svg
  SvgGenImage get onBoarding2 =>
      const SvgGenImage('assets/svg/onBoarding_2.svg');

  /// File path: assets/svg/onBoarding_3.svg
  SvgGenImage get onBoarding3 =>
      const SvgGenImage('assets/svg/onBoarding_3.svg');

  /// File path: assets/svg/status.svg
  SvgGenImage get status => const SvgGenImage('assets/svg/status.svg');

  /// File path: assets/svg/univ_location.svg
  SvgGenImage get univLocation =>
      const SvgGenImage('assets/svg/univ_location.svg');

  /// File path: assets/svg/woman.svg
  SvgGenImage get woman => const SvgGenImage('assets/svg/woman.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        add,
        man,
        onBoarding1,
        onBoarding2,
        onBoarding3,
        status,
        univLocation,
        woman
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLogoGen logo = $AssetsLogoGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
