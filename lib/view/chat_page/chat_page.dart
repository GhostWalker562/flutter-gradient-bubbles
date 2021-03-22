import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:message_gradient/application/theme_provider.dart';
import 'package:provider/provider.dart';

import '../../application/conversation_provider.dart';
import '../../data/mock_data.dart';
import '../../data/models/chat_models.dart';
import '../../styled_widgets/styled_widgets.dart';
import '../../utils/utils.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final double kInputFieldHeight = 50;
  final double kBubblePadding = 8;
  final BoxConstraints bubbleConstraints = BoxConstraints(maxWidth: 250);

  /// We'd replace this with some authentication uid. But for tutorial purposes
  /// we're going to assign this uid with our mock uid.
  String? uid;

  List<Widget> _buildBubbles(List<ChatMessage> messages) {
    final List<Widget> children = <Widget>[];
    for (ChatMessage message in messages) {
      children.add(
        Stack(
          children: [
            //* Container
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                context.colorScheme.background,
                (message.isSenderUID(uid!))
                    ? BlendMode.srcOut
                    : BlendMode.dstATop,
              ),
              child: _buildBubbleLayer(message),
            ),
            //* Text
            _buildBubbleLayer(message, showText: true),
          ],
        ),
      );
    }
    // Expanded will allow us to fill the rest of the area and then we have to pad the list.
    return children
      ..add(Expanded(child: Container(color: context.colorScheme.background)))
      //* Bottom padding
      ..add(SizedBox(height: kInputFieldHeight))
      //* Top padding
      ..insert(
          0,
          Container(
              width: double.infinity,
              height: 8,
              color: context.colorScheme.background));
  }

  Widget _buildBubbleLayer(ChatMessage message, {bool showText = false}) {
    final bool isMine = message.isSenderUID(uid!);

    return Container(
      width: double.infinity,
      color: showText ? null : Colors.transparent,
      alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: bubbleConstraints,
        margin: const EdgeInsets.fromLTRB(12, 0, 12, 8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: showText ? null : context.colorScheme.secondary,
          ),
          padding: EdgeInsets.all(kBubblePadding),
          child: Text(
            message.content,
            style: TextStyle(
              color: showText
                  ? context.colorScheme.onSecondary
                  : Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    uid = mockUID;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ConversationProvider>(
      create: (context) => ConversationProvider(mockConversation),
      child: Consumer<ConversationProvider>(
        builder: (context, model, child) {
          // We find the user not in our list. Preferablly, we'd try to
          // change this to support either multiple users.
          final User partner = model.conversation.users
              .firstWhere((element) => element.userID != uid);

          return StyledScaffold(
            appBar: AppBar(
              backgroundColor: context.colorScheme.surface,
              shadowColor: context.theme.shadowColor.withOpacity(0.1),
              iconTheme: IconThemeData(
                  color: context.colorScheme.primaryVariant, size: 24),
              leading: TextButton(
                onPressed: Navigator.of(context).pop,
                child: Icon(CupertinoIcons.chevron_back),
              ),
              titleSpacing: 8,
              leadingWidth: 40,
              title: Row(
                children: [
                  Text(
                    partner.name,
                    style: context.textTheme.headline5!.copyWith(
                      color: context.colorScheme.primaryVariant,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: context.read<DarkThemeProvider>().toggleDarkTheme,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: context.colorScheme.primaryVariant,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(partner.imageURL),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                ],
              ),
            ),
            body: Stack(
              fit: StackFit.expand,
              children: [
                //* Layer 1
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.pinkAccent,
                        Colors.deepPurpleAccent,
                        Colors.blue,
                      ],
                    ),
                  ),
                ),
                //* Layer 2
                LayoutBuilder(
                  builder: (BuildContext context,
                      BoxConstraints viewportConstraints) {
                    return SingleChildScrollView(
                      physics: ClampingScrollPhysics(),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: viewportConstraints.maxHeight,
                        ),
                        child: IntrinsicHeight(
                          child: Column(
                            children:
                                _buildBubbles(model.conversation.messages),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                //* Text Input
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: kInputFieldHeight,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    decoration: BoxDecoration(
                      color: context.colorScheme.surface,
                      boxShadow: [
                        BoxShadow(
                          color: context.theme.shadowColor.withOpacity(0.1),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: MessageTextField(
                      onSubmitted: (String message) =>
                          model.sendMessage(message, uid!),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class MessageTextField extends StatefulWidget {
  final ValueChanged<String>? onSubmitted;
  final TextEditingController? controller;

  const MessageTextField({Key? key, this.onSubmitted, this.controller})
      : super(key: key);

  @override
  _MessageTextFieldState createState() => _MessageTextFieldState();
}

class _MessageTextFieldState extends State<MessageTextField>
    with TickerProviderStateMixin {
  final FocusNode focus = FocusNode();
  late TextEditingController controller;

  bool showSubmit = false;

  @override
  void initState() {
    focus.addListener(_onTextFieldFocus);
    controller = widget.controller ?? TextEditingController();
    super.initState();
  }

  void _onTextFieldFocus() {
    showSubmit = focus.hasFocus;
    setState(() {});
  }

  void _onFieldSubmit([String? value]) {
    showSubmit = false;
    // If the value was submitted with the button, there is no value.
    value ??= controller.text;
    if (value.isNotEmpty) {
      widget.onSubmitted?.call(value);
      // Clear and unfocus after submitting.
      controller.clear();
    }
    focus.unfocus();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            focusNode: focus,
            controller: controller,
            style: context.textTheme.bodyText1!
                .copyWith(color: context.colorScheme.onSurface),
            scrollPadding: EdgeInsets.zero,
            onSubmitted: _onFieldSubmit,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(90),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: context.colorScheme.primaryVariant),
                borderRadius: BorderRadius.circular(8),
              ),
              hintText: 'Message...',
            ),
          ),
        ),
        AnimatedSize(
          vsync: this,
          duration: Duration(milliseconds: 200),
          curve: Curves.linearToEaseOut,
          child: (showSubmit)
              ? Container(
                  margin: const EdgeInsets.only(left: 8),
                  padding: const EdgeInsets.all(2),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        backgroundColor: context.colorScheme.primaryVariant,
                        primary: context.colorScheme.secondary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90),
                        ),
                      ),
                      onPressed: _onFieldSubmit,
                      child: Icon(Icons.arrow_upward_rounded),
                    ),
                  ),
                )
              : SizedBox.shrink(),
        ),
      ],
    );
  }
}
