part of 'chat_bot_cubit.dart';

enum ChatBotStatus { initial, loading, loaded, error }

class ChatBotState extends Equatable {
  const ChatBotState({
    this.event = ChatBotStatus.initial,
    required this.messages,
  });

  final ChatBotStatus event;
  final List<Message> messages;

  @override
  List<Object?> get props => [event, messages];

  ChatBotState copyWith({
    ChatBotStatus? event,
    List<Message>? messages,
  }) {
    return ChatBotState(
      event: event ?? this.event,
      messages: messages ?? this.messages,
    );
  }
}
