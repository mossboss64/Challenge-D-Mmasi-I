start = "C:/Users/faNet/Downloads/beginning.mp3"
vocal = "C:/Users/faNet/Downloads/Feel Good Inc - Gorillaz (only vocals).mp3"
guit = "C:/Users/faNet/Downloads/guit11.mp3"
damon = "C:/Users/faNet/Desktop/New folder/Blur on Radiohead and Rift With Famous Hollywood Director  Much Rewind.mp3"
sample start, sustain: 100
sleep 15.5
sample vocal, amp: 2, sustain: 100
use_bpm 135
use_synth :piano
use_transpose -8
sleep 13.55
play :gb5
sleep 1
play :fb5
sleep 1

define :bass_and_sleep do |b, s, sus|
  use_synth :piano
  play b, sustain: sus
  sleep s
end

live_loop :treble do
  6.times do
    with_fx :reverb do
      bass_and_sleep :e2, 1.5, 0
      bass_and_sleep :e2, 0.5, 0
      bass_and_sleep :f2, 0.5, 0
      bass_and_sleep :g2, 1, 0
      bass_and_sleep :c3, 1, 0.5
      bass_and_sleep :b2, 3.5, 2
      bass_and_sleep :a2, 1.5, 0
      bass_and_sleep :a2, 0.5, 0
      bass_and_sleep :c3, 0.5, 0
      bass_and_sleep :b2, 1, 0
      bass_and_sleep :g2, 0.5, 2
      bass_and_sleep :e2, 1.5, 1
      bass_and_sleep :gb5, 1, 0
      bass_and_sleep :fb5, 1, 0
    end
  end
  stop
end

sample guit
sleep 15.5

live_loop :drums do
  125.times do
    sample :drum_cymbal_closed
    sleep 0.5
  end
  stop
end
live_loop :drums2 do
  63.times do
    sample :drum_snare_soft
    sleep 1
  end
  stop
end
sleep 14
2.times do
  sample :drum_snare_hard, amp: 2
  sleep 1
end

sleep 30
a = 0.25
mainNotes = [:b4, :g4, :es4, :a4, :a4, :a4, :f5, :d5, :a4, :f5, :d5, :a4, :gs4, :e4, :gs4, :e4, :gs4, :e4,:gs4, :e4, :e2 ]
mainSleeps = [0, 0, 1, 0.5, 3, 1, 0, 0, 0.5, 0, 0, 1.5, 3, 1, 1, 1, 1, 0.5, 1, 2, 0.5]
mainSus = [0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0]
i=0
live_loop :mainsong do
  21.times do
    play mainNotes[i], amp: a, sustain: mainSus[i]
    sleep mainSleeps[i]
    i=i+1
    a=a+0.25
  end
  a = a-5
  i=0
  play :b4, amp: a
  sleep 1
  play :a4, amp: a
  sleep 1
  play :g4, amp: a
  sleep 2.5
  stop
end
sleep 16

live_loop :treble2 do
  2.times do
    with_fx :reverb do
      bass_and_sleep :e2, 1.5, 0
      bass_and_sleep :e2, 0.5, 0
      bass_and_sleep :f2, 0.5, 0
      bass_and_sleep :g2, 1, 0
      bass_and_sleep :c3, 1, 0.5
      bass_and_sleep :b2, 3.5, 2
      bass_and_sleep :a2, 1.5, 0
      bass_and_sleep :a2, 0.5, 0
      bass_and_sleep :c3, 0.5, 0
      bass_and_sleep :b2, 1, 0
      bass_and_sleep :g2, 0.5, 2
      bass_and_sleep :e2, 1.5, 1
      bass_and_sleep :gb5, 1, 0
      bass_and_sleep :fb5, 1, 0
    end
  end
  stop
end

live_loop :drums2b do
  64.times do
    sample :drum_cymbal_closed
    sleep 0.5
  end
  stop
end

live_loop :snare2 do
  32.times do
    sample :drum_snare_soft
    sleep 1
  end
  stop
end
live_loop :mainsong2 do
  21.times do
    play mainNotes[i], amp: a, sustain: mainSus[i]
    sleep mainSleeps[i]
    i=i+1
    a=a+0.25
  end
  
  i=0
  
  play :b4, amp: a
  sleep 1
  play :a4, amp: a
  sleep 1
  play :g4, amp: a
  sleep 2.5
  
  stop
end
sleep 4
#transition
sample :vinyl_scratch
sleep 1.5
sample damon
sleep 13.5

use_bpm 72
my_sample = "C:/Users/faNet/Downloads/interstellar2.mp3"
define :synth_track do
  notes = [:A, :C, :F, :C]
  i = 0
  3.times do
    4.times do
      play notes[i], attack: 0.01
      sleep 0.5
      i = i + 1
    end
    i = 0
  end
  play :bb4, attack: 0.01
  sleep 0.5
  play :db, attack: 0.01
  sleep 0.5
  play :F, attack: 0.01
  sleep 0.5
  play :G, attack: 0.01
  sleep 0.55
end

define :bass do
  live_loop :bass_repeat do
    2.times do
      play :f2, release: 2, amp: 0.5
      sleep 2
      play :f2, release: 2, amp: 0.5
      sleep 0.5
      play :f2, release: 2, amp: 0.5
      sleep 1.5
      play :f2, release: 2, amp: 0.5
      sleep 2
      play :bb2, release: 1, amp: 0.5
      sleep 0.75
      play :bb2, release: 1, amp: 0.5
      sleep 0.75
      play :a2, release: 1, amp: 0.5
      sleep 0.5
    end
  end
end

use_transpose +5
use_synth :blade
live_loop :main do
  5.times do
    bass
    synth_track
  end
  stop
end

sleep 8
live_loop :guit do
  4.times do
    use_synth :piano
    play :f4
    play :a4
    sleep 2
    play :d4
    play :c4
    sleep 2
  end
  stop
end
live_loop :guit_bass_clef do
  2.times do
    play :f2
    sleep 1
    play :c3
    sleep 1
    play :e3
    sleep 1
    play :f2
    sleep 1
  end
  stop
end

live_loop :drums do
  4.times do
    sample :drum_bass_soft, amp: 1.5
    sleep 0.5
    sample :drum_cymbal_closed, amp: 1
    sleep 0.75
    sample :drum_bass_soft, amp: 1.5
    sleep 0.5
    sample :drum_snare_soft, amp: 1
    sleep 0.25
  end
  stop
end

sleep 8
live_loop :bridge do
  4.times do
    use_synth :hollow
    play :f4,  release: 2, amp: 2
    sleep 2
    play :g4, release: 2, amp: 2
    sleep 2
  end
  stop
end

