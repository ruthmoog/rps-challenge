# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

describe "Play an online game of Rock Paper Scissors", type: :feature do
  context "when registering to play" do
    it "accepts a player name in a form" do
      sign_in_and_play
      expect(page).to have_content 'Dwayne Johnson V Computer'
    end
  end

  context "when in game" do
    it "gives a choice of rock or paper or scissors" do
      sign_in_and_play
      find_button('Rock')
      find_button('Paper')
      find_button('Scissors')

    end

  end

  it "displays a winner" do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'player wins!' or 'computer wins!' or "It's a draw!"
  end
end
