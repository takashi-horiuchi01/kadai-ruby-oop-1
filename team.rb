# クラス定義
class Team

  # インスタンスが持つ変数（値）
  attr_accessor :name, :win, :lose, :drow

  # インスタンスを初期化するための、特別なメソッド
  def initialize(name, win, lose, drow)
    self.name = name
    self.win = win
    self.lose = lose
    self.drow = drow
  end

  # 勝率
  def calc_win_rate
    win_rate = self.win.to_f / (self.win + self.lose)
    return win_rate
  end

  # 結果出力
  def show_team_result
    # 勝率の取得
    win_rate = calc_win_rate()
    # 画面出力
    puts "#{self.name}の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.drow}分、勝率は #{win_rate}です。"
  end
end

# インスタンスの生成と、変数への代入
team1 = Team.new('Giants',67, 45, 8)
team2 = Team.new('Tigers',60, 53, 7)
team3 = Team.new('Dragons',60, 55, 5)
team4 = Team.new('BayStars',56, 58, 6)
team5 = Team.new('Carp',52, 56, 12)
team6 = Team.new('Swallows',41, 69, 10)

# インスタンスの利用
team1.show_team_result
team2.show_team_result
team3.show_team_result
team4.show_team_result
team5.show_team_result
team6.show_team_result
