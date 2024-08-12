import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:wisp_app/models/message.dart';

part 'chat_bot_state.dart';

class ChatBotCubit extends Cubit<ChatBotState> {
  ChatBotCubit() : super(const ChatBotState(messages: []));

  final List<Message> _messages = [];
  final gemini = Gemini.instance;

  void initialPrompt(String initialPrompt) {
    _messages.add(Message(initialPrompt, false));
    emit(state.copyWith(
      messages: _messages,
    ));
  }

  void sendMessage(String text, bool isUser) {
    _messages.add(Message(text, isUser));
    emit(state.copyWith(
      messages: _messages,
    ));
  }

  void callGemini() {
    emit(state.copyWith(
      event: ChatBotStatus.loading,
    ));

    final result = gemini.chat(_messages
        .map((e) => Content(
            parts: [Parts(text: e.text)], role: e.isUser ? 'user' : 'model'))
        .toList());
  }
}
