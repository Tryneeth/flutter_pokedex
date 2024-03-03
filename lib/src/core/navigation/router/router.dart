import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/core/navigation/route/routes.dart';
import 'package:injectable/injectable.dart';

part "router.gr.dart";

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
@lazySingleton
class ClientRouter extends _$ClientRouter {
  ClientRouter() : _routes = pokedexRoutes;

  final List<AutoRoute> _routes;

  @override
  List<AutoRoute> get routes => _routes;

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
}
