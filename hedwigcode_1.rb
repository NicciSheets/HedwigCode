define :bar_one do
  use_synth :pretty_bell
  play 69, sustain: 1.5
  sleep 1.5
  play 72, sustain: 0.5
  sleep 0.5
  play 71, sustain: 1
  sleep 1
end

define :bar_two do
  play 69, sustain: 2
  sleep 2
  play 76, sustain: 1
  sleep 1
end

def left_hand(whole_note)
  use_synth :pretty_bell
  play whole_note, sustain: 3
  sleep 3
end

use_bpm 150
in_thread do
  sleep 1
  7.times do
    left_hand(57)
  end
  play 52, sustain: 2
  sleep 3
  2.times do
    left_hand(57)
  end
  left_hand(60)
  left_hand(58)
  2.times do
    left_hand(57)
  end
  play 57, sustain: 2
  sleep 2
  play 60, sustain: 1
  sleep 1
  left_hand(57)
end

in_thread do
  play 64, sustain: 1
  sleep 1
  bar_one
  bar_two
  play 74, sustain: 3
  sleep 3
  play 69, sustain: 3
  sleep 3
  bar_one
  play 68, sustain: 2
  sleep 2
  play 70, sustain: 1
  sleep 1
  play 64, sustain: 5
  sleep 5
  play 64, sustain: 1
  sleep 1
  bar_one
  bar_two
  play 79, sustain: 2
  sleep 2
  play 78, sustain: 1
  sleep 1
  play 77, sustain: 1.5
  sleep 1.5
  play 76, sustain: 0.5
  sleep 0.5
  play 75, sustain: 1
  sleep 1
  play 63, sustain: 2
  sleep 2
  play 72, sustain: 1
  sleep 1
  play 69, sustain: 5
  sleep 5
end




