class RewardsDetailsInfo {
  final title;
  final description;
  final amount;
  final imageAsset;

  RewardsDetailsInfo(this.title, this.description,this.amount,this.imageAsset);
}

List<RewardsDetailsInfo> rewardDetailsTabs = [
  RewardsDetailsInfo('Invite Friends',
      'Get your buddies on board. When they join Fundify using your invite, you earn FundCoins for every transaction they make.', '20', 'assets/images/coin.png'),
  RewardsDetailsInfo('Handle Your Money', 'Every time you do something smart with your money – like transferring, saving, or paying bills – Fundify thanks you with FundCoins.',
      '20','assets/images/coin.png'),
  RewardsDetailsInfo('Stay Active', 'Simply using Fundify regularly and checking in can add more FundCoins to your stash.',
      '20','assets/images/coin.png'),
];