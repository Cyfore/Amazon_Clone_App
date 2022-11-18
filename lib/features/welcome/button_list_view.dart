part of welcome_screen;

class ButtonListView extends StatelessWidget {
  const ButtonListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: AuthConstants.info.length,
        itemBuilder: (context, index) => Padding(
          padding: WelcomeButtonPadding.welcomeButtonPadding,
          child: WelcomeButton(
            authRoute: AuthConstants.authRoute[index],
            info: AuthConstants.info[index],
            color: AuthConstants.colors[index],
          ),
        ),
      ),
    );
  }
}
