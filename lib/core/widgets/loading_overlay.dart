import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingOverlay {
  static final LoadingOverlay _instance = LoadingOverlay._internal();
  factory LoadingOverlay() => _instance;
  LoadingOverlay._internal();

  OverlayEntry? _overlayEntry;
  int _showCount = 0;
  VoidCallback? _onDismissCallback;

  void show(
    BuildContext context, {
    String lottieAsset = 'assets/lottie/clinic_loading_animation.json',
    bool dismissOnTap = true,
    VoidCallback? onDismiss,
  }) {
    _showCount++;
    if (_overlayEntry != null) return;

    _onDismissCallback = onDismiss;

    _overlayEntry = OverlayEntry(
      builder:
          (context) => Material(
            color: Colors.transparent,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: dismissOnTap ? _dismissOverlay : null,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      color: Colors.black.withValues(
                        alpha: 0.2,
                      ), // Optional dim overlay
                    ),
                  ),
                  Center(
                    child: Lottie.asset(
                      lottieAsset,
                      width: 150,
                      height: 150,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  void _dismissOverlay() {
    hide();
    _onDismissCallback?.call();
  }

  void hide() {
    if (_showCount <= 0) return;
    _showCount--;

    if (_showCount == 0) {
      _overlayEntry?.remove();
      _overlayEntry = null;
      _onDismissCallback = null;
    }
  }

  void hideAll() {
    _showCount = 0;
    _overlayEntry?.remove();
    _overlayEntry = null;
    _onDismissCallback?.call();
    _onDismissCallback = null;
  }
}
