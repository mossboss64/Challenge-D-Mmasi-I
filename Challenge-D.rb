# CHALLENGE D: Use functions to optimize the SpongeBob theme!

use_bpm 130
use_synth :piano


live_loop:background_notes do
  play:E3, amp: 0.25
  sleep 1
  play:B3, amp: 0.25
  play:E4, amp: 0.25
  sleep 1
  play:B3, amp: 0.25
  sleep 1
  play:E4, amp: 0.25
  sleep 1
  
  play:E3, amp: 0.5
  sleep 1
  play:B3, amp: 0.5
  play:E4, amp: 0.5
  sleep 1
  play:B3, amp: 0.5
  sleep 1
  play:E4, amp: 0.5
  sleep 1
  
  play:E3, amp: 0.75
  sleep 1
  play:B3, amp: 0.75
  play:E4, amp: 0.75
  sleep 1
  play:B3, amp: 0.75
  sleep 1
  play:E4, amp: 0.75
  sleep 1
  
  8.times do
    play:E3, amp: 1
    sleep 1
    play:B3, amp: 1
    play:E4, amp: 1
    sleep 1
    play:B3, amp: 1
    sleep 1
    play:E4, amp: 1
    sleep 1
  end
  stop
end
define :measure_1 do
  play :r
  sleep 1
  play:E4
  play:Gs4
  sleep 2
  play:E5
  play:Gs4
  sleep 1
end
define :measure_2_8 do
  play:E4
  sleep 1
  play:E5
  play:Gs4
  sleep 2
  play:E5
  play:Gs4
  sleep 1
end
define :measure_3_4_6 do
  play :r
  sleep 1
  play:E5
  play:Gs4
  play:B4
  sleep 1
  play:B4
  sleep 1
  play:E5
  play:Gs4
  sleep 1
end
define :measure_5_7 do
  play:B4
  sleep 0.75
  play:As4
  sleep 0.25
  play:Gs4
  play:B4
  sleep 0.75
  play:Cs5
  sleep 0.25
  play:B4
  sleep 1
  play:Gs4
  play:E5
  sleep 1
end
define :measure_9 do
  play:Eb, amp: 0.75
  sleep 0.75
  play:Eb, amp: 0.75
  sleep 0.50
  play:As4
end
live_loop :beat do
  sample :drum_snare_soft
  sleep 2
end
# Measure 1
measure_1
live_loop :beat2 do
  sample :loop_amen
  sleep 4
end
# Measure 2
measure_2_8
# Measure 3
measure_3_4_6
# Measure 4
measure_3_4_6
# Measure 5
measure_5_7
# Measure 6
measure_3_4_6
# Measure 7
measure_5_7
# Measure 8
measure_2_8
# Measure 9
measure_9
