local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = "soundtrack.mp3"
L1_1 = 1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L1_2.configuration = A0_2
  L2_2 = {}
  L1_2.sounds = L2_2
  L1_2.backgroundVolume = 1
  L1_2.backgroundMusic = nil
  L1_2.backgroundChannel = nil
  L2_2 = {}
  L1_2.loopChannels = L2_2
  L2_2 = {}
  L1_2.activeChannels = L2_2
  L2_2 = L1_1
  L2_2 = L2_2 + 1
  L1_2.fxChannel = L2_2
  L2_2 = audio
  L2_2 = L2_2.reserveChannels
  L3_2 = L1_1
  L2_2(L3_2)
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = ipairs
    L2_3 = L1_2
    L2_3 = L2_3.activeChannels
    L1_3, L2_3, L3_3 = L1_3(L2_3)
    for L4_3, L5_3 in L1_3, L2_3, L3_3 do
      L6_3 = A0_3.channel
      L7_3 = L5_3.channel
      if L6_3 == L7_3 then
        L6_3 = table
        L6_3 = L6_3.remove
        L7_3 = L1_2
        L7_3 = L7_3.activeChannels
        L8_3 = L4_3
        L6_3(L7_3, L8_3)
      end
    end
  end
  
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = print
    L3_3 = "[audio controller] "
    L4_3 = A1_3
    L3_3 = L3_3 .. L4_3
    L2_3(L3_3)
  end
  
  L1_2.log = L3_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.fxChannel
    L2_3 = A0_3.fxChannel
    L2_3 = L2_3 + 1
    L3_3 = audio
    L3_3 = L3_3.totalChannels
    if L2_3 > L3_3 then
      L2_3 = L1_1
      L2_3 = L2_3 + 1
      A0_3.fxChannel = L2_3
    else
      L2_3 = A0_3.fxChannel
      L2_3 = L2_3 + 1
      A0_3.fxChannel = L2_3
    end
    return L1_3
  end
  
  L1_2.getFreeChannel = L3_2
  
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = A0_3.configuration
    L2_3 = L2_3.soundfx
    if L2_3 then
      L2_3 = A0_3.sounds
      L2_3 = L2_3[A1_3]
      if not L2_3 then
        L2_3 = A0_3.sounds
        L3_3 = audio
        L3_3 = L3_3.loadSound
        L4_3 = SOUND_DIR
        L5_3 = A1_3
        L6_3 = ".wav"
        L4_3 = L4_3 .. L5_3 .. L6_3
        L3_3 = L3_3(L4_3)
        L2_3[A1_3] = L3_3
      end
      L2_3 = A0_3.sounds
      L2_3 = L2_3[A1_3]
      return L2_3
    else
      L2_3 = nil
      return L2_3
    end
  end
  
  L1_2.loadSound = L3_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L1_3 = ipairs
    L2_3 = L1_2
    L2_3 = L2_3.activeChannels
    L1_3, L2_3, L3_3 = L1_3(L2_3)
    for L4_3, L5_3 in L1_3, L2_3, L3_3 do
      L6_3 = L5_3.animationId
      if A0_3 ~= L6_3 then
        L6_3 = L1_2
        L7_3 = L6_3
        L6_3 = L6_3.log
        L8_3 = string
        L8_3 = L8_3.format
        L9_3 = "stop channel=%d, animId=%s, soundName=%s"
        L10_3 = L5_3.channel
        L11_3 = tostring
        L12_3 = L5_3.animationId
        L11_3 = L11_3(L12_3)
        L12_3 = tostring
        L13_3 = L5_3.soundName
        L12_3, L13_3 = L12_3(L13_3)
        L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
        L6_3 = audio
        L6_3 = L6_3.isChannelActive
        L7_3 = L5_3.channel
        L6_3 = L6_3(L7_3)
        if L6_3 then
          L6_3 = audio
          L6_3 = L6_3.stop
          L7_3 = L5_3.channel
          L6_3(L7_3)
        end
        L6_3 = L1_2
        L6_3 = L6_3.loopChannels
        L7_3 = L5_3.soundName
        L6_3 = L6_3[L7_3]
        if L6_3 then
          L6_3 = L1_2
          L6_3 = L6_3.loopChannels
          L7_3 = L5_3.soundName
          L6_3[L7_3] = nil
        end
        L6_3 = table
        L6_3 = L6_3.remove
        L7_3 = L1_2
        L7_3 = L7_3.activeChannels
        L8_3 = L4_3
        L6_3(L7_3, L8_3)
      end
    end
  end
  
  function L4_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    if not A3_3 then
      A3_3 = 0
    end
    L4_3 = A0_3.configuration
    L4_3 = L4_3.soundfx
    if L4_3 then
      L5_3 = A0_3
      L4_3 = A0_3.getFreeChannel
      L4_3 = L4_3(L5_3)
      L5_3 = L3_2
      L6_3 = A2_3
      L5_3(L6_3)
      L6_3 = A0_3
      L5_3 = A0_3.loadSound
      L7_3 = A1_3
      L5_3 = L5_3(L6_3, L7_3)
      L6_3 = audio
      L6_3 = L6_3.play
      L7_3 = L5_3
      L8_3 = {}
      L8_3.loops = A3_3
      L8_3.channel = L4_3
      L9_3 = L2_2
      L8_3.onComplete = L9_3
      L6_3(L7_3, L8_3)
      L6_3 = table
      L6_3 = L6_3.insert
      L7_3 = A0_3.activeChannels
      L8_3 = {}
      L8_3.channel = L4_3
      L8_3.animationId = A2_3
      L8_3.soundName = A1_3
      L6_3(L7_3, L8_3)
    end
  end
  
  L1_2.play = L4_2
  
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L3_3 = A0_3.configuration
    L3_3 = L3_3.soundfx
    if L3_3 then
      L3_3 = A0_3.loopChannels
      L3_3 = L3_3[A1_3]
      if L3_3 then
      else
        L4_3 = A0_3
        L3_3 = A0_3.getFreeChannel
        L3_3 = L3_3(L4_3)
        L4_3 = L3_2
        L5_3 = A2_3
        L4_3(L5_3)
        L5_3 = A0_3
        L4_3 = A0_3.loadSound
        L6_3 = A1_3
        L4_3 = L4_3(L5_3, L6_3)
        L5_3 = audio
        L5_3 = L5_3.play
        L6_3 = L4_3
        L7_3 = {}
        L7_3.loops = -1
        L7_3.channel = L3_3
        L8_3 = L2_2
        L7_3.onComplete = L8_3
        L5_3(L6_3, L7_3)
        L5_3 = table
        L5_3 = L5_3.insert
        L6_3 = A0_3.activeChannels
        L7_3 = {}
        L7_3.channel = L3_3
        L7_3.animationId = A2_3
        L7_3.soundName = A1_3
        L5_3(L6_3, L7_3)
        L5_3 = A0_3.loopChannels
        L5_3[A1_3] = L3_3
      end
    end
  end
  
  L1_2.playLoop = L4_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.loopChannels
    L2_3 = L2_3[A1_3]
    if L2_3 then
      L2_3 = audio
      L2_3 = L2_3.stop
      L3_3 = A0_3.loopChannels
      L3_3 = L3_3[A1_3]
      L2_3(L3_3)
      L2_3 = A0_3.loopChannels
      L2_3[A1_3] = nil
    end
  end
  
  L1_2.stopLoop = L4_2
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = A0_3.configuration
    L1_3 = L1_3.soundbg
    if L1_3 then
      L1_3 = A0_3.backgroundChannel
      if not L1_3 then
        L1_3 = audio
        L1_3 = L1_3.loadStream
        L2_3 = SOUND_DIR
        L3_3 = L0_1
        L2_3 = L2_3 .. L3_3
        L1_3 = L1_3(L2_3)
        A0_3.backgroundMusic = L1_3
        L1_3 = audio
        L1_3 = L1_3.play
        L2_3 = A0_3.backgroundMusic
        L3_3 = {}
        L3_3.loops = -1
        L4_3 = L1_1
        L3_3.channel = L4_3
        L1_3 = L1_3(L2_3, L3_3)
        A0_3.backgroundChannel = L1_3
        L2_3 = A0_3
        L1_3 = A0_3.setBackgroundMusicVolume
        L3_3 = A0_3.configuration
        L3_3 = L3_3.soundbgvol
        L1_3(L2_3, L3_3)
        L2_3 = A0_3
        L1_3 = A0_3.log
        L3_3 = string
        L3_3 = L3_3.format
        L4_3 = "play background music on channel=%d, vol=%1.1f, file=%s"
        L5_3 = A0_3.backgroundChannel
        L6_3 = A0_3.configuration
        L6_3 = L6_3.soundbgvol
        L7_3 = L0_1
        L3_3, L4_3, L5_3, L6_3, L7_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
      end
    end
  end
  
  L1_2.playBackgroundMusic = L4_2
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L2_3 = A0_3
    L1_3 = A0_3.log
    L3_3 = "stop all sounds"
    L1_3(L2_3, L3_3)
    L1_3 = L3_2
    L2_3 = nil
    L1_3(L2_3)
  end
  
  L1_2.stopAllSounds = L4_2
  
  function L4_2(A0_3)
    local L1_3
    A0_3.backgroundChannel = nil
    L1_3 = audio
    L1_3 = L1_3.stop
    L1_3()
  end
  
  L1_2.stopAllSoundsAndMusic = L4_2
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.backgroundChannel
    if L1_3 then
      L2_3 = A0_3
      L1_3 = A0_3.log
      L3_3 = "stop background music"
      L1_3(L2_3, L3_3)
      L1_3 = audio
      L1_3 = L1_3.stop
      L2_3 = A0_3.backgroundChannel
      L1_3(L2_3)
      L1_3 = audio
      L1_3 = L1_3.dispose
      L2_3 = A0_3.backgroundMusic
      L1_3(L2_3)
      A0_3.backgroundChannel = nil
      A0_3.backgroundMusic = nil
    end
  end
  
  L1_2.stopBackgroundMusic = L4_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    A0_3.backgroundVolume = A1_3
    L2_3 = A0_3.backgroundChannel
    if L2_3 then
      L2_3 = audio
      L2_3 = L2_3.setVolume
      L3_3 = A0_3.backgroundVolume
      L4_3 = {}
      L5_3 = A0_3.backgroundChannel
      L4_3.channel = L5_3
      L2_3(L3_3, L4_3)
    end
  end
  
  L1_2.setBackgroundMusicVolume = L4_2
  
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = audio
    L1_3 = L1_3.setVolume
    L2_3 = 0
    L1_3(L2_3)
  end
  
  L1_2.mute = L4_2
  
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = audio
    L1_3 = L1_3.setVolume
    L2_3 = 1
    L1_3(L2_3)
  end
  
  L1_2.unmute = L4_2
  
  function L4_2(A0_3)
    local L1_3
    L1_3 = audio
    L1_3 = L1_3.getVolume
    L1_3 = L1_3()
    L1_3 = L1_3 == 0
    return L1_3
  end
  
  L1_2.isMute = L4_2
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = pairs
    L2_3 = A0_3.sounds
    L1_3, L2_3, L3_3 = L1_3(L2_3)
    for L4_3 in L1_3, L2_3, L3_3 do
      L5_3 = audio
      L5_3 = L5_3.dispose
      L6_3 = L4_3
      L5_3(L6_3)
    end
    L1_3 = {}
    A0_3.sounds = L1_3
  end
  
  L1_2.memoryWarning = L4_2
  return L1_2
end

newAudioController = L2_1
