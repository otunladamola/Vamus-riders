import 'package:event_bus/event_bus.dart';

EventBus eventBus = EventBus();

class SwitchBottomNavEvent {
  int index;
  SwitchBottomNavEvent({this.index = 0});
}

class RefreshLocationEvent {}
