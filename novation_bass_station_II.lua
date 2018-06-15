-- OSCILLATOR 1 --
local group_oscillator_1 = Group {
  name = "Oscillator 1",
  Parameter {
    id = "osc_1_range",
    name = "Range",
    type = "cc",
    number = 70,
    default_value = 2,
    items = {"16'","8'","4'","2'"},
    item_values = {63,64,65,66},
  },
  Parameter {
    id = "osc_1_fine",
    name = "Fine",
    type = "cc",
    number = 26,
    default_value = 64, 
    display_min_value = -100,
    display_max_value = 100
  },
  Parameter {
    id = "osc_1_coarse",
    name = "Coarse",
    type = "cc",
    number = 27,
    default_value = 65, 
    display_min_value = -12,
    display_max_value = 12
  },
  Parameter {
    id = "osc_1_waveform",
    name = "Waveform", 
    type = "nrpn",
    number = 72,
    default_value = 3, 
    items = {"sine","tri","saw","pulse"},
    item_values = {0,1,2,3},
  },
  Parameter {
    id = "osc_1_mod_env_depth",
    name = "Mod Env Depth",
    type = "cc",
    number = 71,
    default_value = 64, 
    display_min_value = -63,
    display_max_value = 63
  },
  Parameter {
    id = "osc_1_lfo_depth",
    name = "LFO 1 Depth",
    type = "cc",
    number = 28,
    default_value = 64, 
    display_min_value = -127,
    display_max_value = 127
  },
  Parameter {
    id = "osc_1_mod_env_pw_mod_amount",
    name = "Mod Env PW",
    type = "cc",
    number = 72,
    default_value = 64, 
    display_min_value = -63,
    display_max_value = 63
  },
  Parameter {
    id = "osc_1_LFO_2_PW",
    name = "LFO 2 PW",
    type = "cc",
    number = 73,
    default_value = 64, 
    display_min_value = -90,
    display_max_value = 90
  },
  Parameter {
    id = "osc_1_pw_amount",
    name = "Manual PW Amount",
    type = "cc",
    number = 74,
    default_value = 64, 
    display_min_value = -90,
    display_max_value = 90
  },
  Parameter {
    id = "bend_amount",
    name = "Bend_Amount",
    type = "cc",
    number = 107,
    default_value = 1, 
    display_min_value = 1,
    display_max_value = 12,
    min_value = 1,
    max_value = 12
  },
  Parameter {
    id = "osc_1_2_sync",
    name = "Osc Sync",
    type = "cc",
    number = 110,
    default_value = 1,
    items = {"Off","On"},
    item_values = {0,1}
  }
  
  
}

-- OSCILLATOR 2 --
local group_oscillator_2 = Group {
  name = "Oscillator 2",
  Parameter {
    id = "osc_2_range",
    name = "Range",
    type = "cc",
    number = 75,
    default_value = 1,
    items = {"16'","8'","4'","2'"},
    item_values = {63,64,65,66},
  },
  Parameter {
    id = "osc_2_fine",
    name = "Fine",
    type = "cc",
    number = 29,
    default_value = 64, 
    display_min_value = -100,
    display_max_value = 100
  },
  Parameter {
    id = "osc_2_coarse",
    name = "Coarse",
    type = "cc",
    number = 30,
    default_value = 65, 
    display_min_value = -12,
    display_max_value = 12
  },
  Parameter {
    id = "osc_2_waveform",
    name = "Waveform", 
    type = "nrpn",
    number = 82,
    items = {"sine","tri","saw","pulse"},
    item_values = {0,1,2,3},
  },
  Parameter {
    id = "osc_2_mod_env_depth",
    name = "Mod Env Depth",
    type = "cc",
    number = 76,
    default_value = 63, 
    display_min_value = -63,
    display_max_value = 63
  },
  Parameter {
    id = "osc_2_lfo_1_depth",
    name = "LFO 1 Depth",
    type = "cc",
    number = 31,
    default_value = 64, 
    display_min_value = -127,
    display_max_value = 127
  },
  Parameter {
    id = "osc_2_mod_env_pw_mod_amount",
    name = "Mod Env PW",
    type = "cc",
    number = 77,
    default_value = 63, 
    display_min_value = -63,
    display_max_value = 63
  },
  Parameter {
    id = "osc_2_LFO_2_PW",
    name = "LFO 2 PW",
    type = "cc",
    number = 78,
    default_value = 64, 
    display_min_value = -90,
    display_max_value = 90
  },
  Parameter {
    id = "osc_2_pw_amount",
    name = "Manual PW Amount",
    type = "cc",
    number = 79,
    default_value = 64, 
    display_min_value = -90,
    display_max_value = 90
  }
}

-- SUB OSCILLATOR --------------------------------------------
local group_sub_oscillator = Group {
  name = "Sub Oscillator",
  Parameter {
    id = "sub_osc_oct",
    name = "Octave",
    type = "cc",
    number = 81,
    default_value = 1,
    items = {"-1","-2"},
    item_values = {63},
  },
  Parameter {
    id = "sub_osc_waveform",
    name = "Waveform", 
    type ="cc",
    number = 80,
    default_value = 1,
    items = {"sine","sq1","sq2"},
    item_values = {0,1,2},
    }
}

-- MIXER --
local group_mixer = Group {
    name = "Mixer",
    Parameter {
      id = "osc_1_level",
      name = "Osc 1 Level",
      type = "cc",
      number = 20,
      default_value = 127,
      display_min_value = 0,
      display_max_value = 255
    },
    Parameter {
      id = "osc_2_level",
      name = "Osc 2 Level",
      type = "cc",
      number = 21,
      default_value = 0,
      display_min_value = 0,
      display_max_value = 255
    },
    Parameter {
      id = "sub_osc_level",
      name = "Sub Osc Level",
      type = "cc",
      number = 22,
      default_value = 0,
      display_min_value = 0,
      display_max_value = 255
    },
    Parameter {
      id = "noise_level",
      name = "Noise Level",
      type = "cc",
      number = 23,
      default_value = 0,
      display_min_value = 0,
      display_max_value = 255
    },
    Parameter {
      id = "ring_mod_level",
      name = "Ring Mod Level",
      type = "cc",
      number = 24,
      default_value = 0,
      display_min_value = 0,
      display_max_value = 255
    },
    Parameter {
      id = "external_signal_level",
      name = "External Signal Level",
      type = "cc",
      number = 25,
      default_value = 0,
      display_min_value = 0,
      display_max_value = 255
    },
    Parameter {
      id = "limiter",
      name = "Limiter",
      type = "cc",
      number = 95,
      default_value = 0,
      display_min_value = 0,
      display_max_value = 127
    }
}

-- FILTER ------------------------------------------------------
local group_filter = Group {
  name = "Filter",
    Parameter {
      id = "filter_type",
      name = "Type",
      type = "cc",
      number = 83,
      default_value = 1, 
      items = {"Classic","Acid"},
      item_values = {0,1}
    },
    Parameter {
      id = "filter_slope",
      name = "Slope",
      type = "cc",
      number = 106,
      default_value = 2, 
      items = {"12","24"},
      item_values = {0,1}
    },
    Parameter {
      id = "filter_shape",
      name = "Shape",
      type = "cc",
      number = 84,
      items = {"LP","BP","HP"},
      item_values = {0,1,2}
    },
    Parameter {
      id = "filter_frequency",
      name = "Frequency",
      type = "cc",
      number = 16,
      default_value = 127, 
      display_min_value = 0,
      display_max_value = 255
    },
    Parameter {
      id = "filter_resonance",
      name = "Resonance",
      type = "cc",
      number = 82,
      default_value = 0, 
      display_min_value = 0,
      display_max_value = 127
    },
    Parameter {
      id = "filter_mod_envelope_depth",
      name = "Mod Env Depth",
      type = "cc",
      number = 85,
      default_value = 63, 
      display_min_value = -63,
      display_max_value = 63
    },
    Parameter {
      id = "lfo_2_depth",
      name = "LFO 2 Depth",
      type = "cc",
      number = 17,
      default_value = 63, 
      display_min_value = -127,
      display_max_value = 127
    },
    Parameter {
      id = "overdrive",
      name = "Overdrive",
      type = "cc",
      number = 114,
      default_value = 0, 
      display_min_value = 0,
      display_max_value = 127
    }
}

-- LFO 1 -------------------------------------------
local group_lfo_1 = Group {
  name = "LFO 1",
  Parameter {
    id = "lfo_1_speed",
    name = "LFO 1 Speed",
    type = "cc",
    number = 18,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 255
  },
  Parameter {
    id = "lfo_1_delay",
    name = "LFO 1 Delay",
    type = "cc",
    number = 86,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 127
  },
  Parameter {
    id = "lfo_1_wave",
    name = "LFO 1 Wave",
    type = "cc",
    number = 88,
    default_value = 1, 
    items = {"Tri","Saw","Square","S+H"},
    item_values = {0,1,2,3}
  },
  Parameter {
    id = "lfo_1_sync",
    name = "LFO 1 Sync",
    type = "nrpn",
    number = 87,
    default_value = 1, 
    items = {"64 beats", "48 beats", "42 beats", "36 beats", "32 beats", "30 beats", "28 beats", "24 beats",
               "24 + 1/3  beats", "20 beats", "18 + 2.3 beats", "18 beats", "16 beats", "13 + 1/3 beats", "12 beats",
               "10 + 2/3 beats", "8 beats", "6 beats", "5 + 1/3  beats", "4 beats", "3 beats", "2 + 2/3 beats", 
               "2nd", "4th dotted", "1 + 1/3 beats", "4th", "8th dotted", "4th triplet", "8th", "16th dotted",
               "8th triplet", "16th", "16th triplet", "32nd", "32nd triplet"},
    item_values = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34},
    gui_type = "dropdown"
  },
  Parameter {
    id = "key_sync_lfo_1",
    name = "LFO 1 Key Sync",
    type = "nrpn",
    number = 89,
    default_value = 1, 
    items = {"Off","On"},
    item_values = {0,1}
  },
  Parameter {
    id = "speed_sync_lfo_1",
    name = "LFO 1 Speed/Sync",
    type = "nrpn",
    number = 88,
    default_value = 1, 
    items = {"Speed","Sync"},
    item_values = {0,1}
  },
  Parameter {
    id = "slew_lfo_1",
    name = "LFO 1 Slew",
    type = "nrpn",
    number = 86,
    default_value = 0, 
    display_min_value = 0,
    display_max_value = 127
  }
}


-- LFO 2 -------------------------------------------
local group_lfo_2 = Group {
  name = "LFO 2",
  Parameter {
    id = "lfo_2_speed",
    name = "LFO 2 Speed",
    type = "cc",
    number = 19,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 255
  },
  Parameter {
    id = "lfo_2_delay",
    name = "LFO 2 Delay",
    type = "cc",
    number = 87,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 127
  },
  Parameter {
    id = "lfo_2_wave",
    name = "LFO 2 Wave",
    type = "cc",
    number = 89,
    default_value = 1, 
    items = {"Tri","Saw","Square","S+H"},
    item_values = {0,1,2,3}
  },
  Parameter {
    id = "lfo_2_sync",
    name = "LFO 2 Sync",
    type = "nrpn",
    number = 91,
    default_value = 1, 
    items = {"64 beats", "48 beats", "42 beats", "36 beats", "32 beats", "30 beats", "28 beats", "24 beats",
               "24 + 1/3  beats", "20 beats", "18 + 2.3 beats", "18 beats", "16 beats", "13 + 1/3 beats", "12 beats",
               "10 + 2/3 beats", "8 beats", "6 beats", "5 + 1/3  beats", "4 beats", "3 beats", "2 + 2/3 beats", 
               "2nd", "4th dotted", "1 + 1/3 beats", "4th", "8th dotted", "4th triplet", "8th", "16th dotted",
               "8th triplet", "16th", "16th triplet", "32nd", "32nd triplet"},
    item_values = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34},
    gui_type = "dropdown"
  },
  Parameter {
    id = "key_sync_lfo_2",
    name = "LFO 2 Key Sync",
    type = "nrpn",
    number = 93,
    default_value = 1, 
    items = {"Off","On"},
    item_values = {0,1}
  },
  Parameter {
    id = "speed_sync_lfo_2",
    name = "LFO 2 Speed/Sync",
    type = "nrpn",
    number = 92,
    default_value = 1, 
    items = {"Speed","Sync"},
    item_values = {0,1}
  },
  Parameter {
    id = "slew_lfo_2",
    name = "LFO 2 Slew",
    type = "nrpn",
    number = 90,
    default_value = 0, 
    display_min_value = 0,
    display_max_value = 127
  }
}

-- PORTAMENTO --
local group_portamento = Group {
  name = "Portamento",
  Parameter {
    id = "portamento_time",
    name = "Portamento Time",
    type = "cc",
    number = 5,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 127
  }
}

-- Envelope ------------------------------------------
local group_envelope = Group {
  name = "Envelope",
  Parameter {
    id = "amp_env_attack",
    name = "Amp Env Attack",
    type = "cc",
    number = 90,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 127
  },
  Parameter {
    id = "amp_env_decay",
    name = "Amp Env Decay",
    type = "cc",
    number = 91,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 127
  },
  Parameter {
    id = "amp_env_sustain",
    name = "Amp Env Sustain",
    type = "cc",
    number = 92,
    default_value = 127,
    display_min_value = 0,
    display_max_value = 127
  },
  Parameter {
    id = "amp_env_release",
    name = "Amp Env Release",
    type = "cc",
    number = 93,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 127
  },
  Parameter {
    id = "amp_env_triggering",
    name = "Amp Env Triggering",
    type = "nrpn",
    number = 73,
    default_value = 1, 
    items = {"Multi","Single","Auto"},
    item_values = {0,1,2}
  },
  Parameter {
    id = "mod_env_attack",
    name = "Mod Env Attack",
    type = "cc",
    number = 102,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 127
  },
  Parameter {
    id = "mod_env_decay",
    name = "Mod Env Decay",
    type = "cc",
    number = 103,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 127
  },
  Parameter {
    id = "mod_env_sustain",
    name = "Mod Env Sustain",
    type = "cc",
    number = 104,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 127
  },
  Parameter {
    id = "mod_env_release",
    name = "Mod Env Release",
    type = "cc",
    number = 105,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 127
  },
  Parameter {
    id = "mod_env_triggering",
    name = "Mod Env Triggering",
    type = "nrpn",
    number = 105,
    default_value = 1, 
    items = {"Multi","Single","Auto"},
    item_values = {0,1,2}
  }
}

-- Effects --------------------------------------
local group_effects = Group {
  name = "Effects",
  Parameter {
    id = "effects_distortion",
    name = "Distortion",
    type = "cc",
    number = 94,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 127
  },
  Parameter {
    id = "effects_osc_filter_mod",
    name = "Osc Filter Mod",
    type = "cc",
    number = 115,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 127
  } 
}


-- VELOCITY --
local group_velocity = Group {
  name = "Velocity",
  Parameter {
    id = "amp_env",
    name = "Amp Env",
    type = "cc",
    number = 112,
    default_value = 127,
    display_min_value = 0,
    display_max_value = 127
  },
  Parameter {
    id = "mod_env",
    name = "Mod Env",
    type = "cc",
    number = 113,
    default_value = 127,
    display_min_value = 0,
    display_max_value = 127
  } 
}

-- ARPEGGIATOR ----------------------------------
local group_arp = Group {
  name = "Arpeggiator",
  Parameter {
    id = "arp_on",
    name = "On",
    type = "cc",
    number = 108,
    default_value = 1, 
    items = {"Off","On"},
    item_values = {0,1}
  },
  Parameter {
    id = "arp_retrig",
    name = "Retrig",
    type = "nrpn",
    number = 106,
    default_value = 1, 
    items = {"Off","On"},
    item_values = {0,1}
  },
  Parameter {
    id = "arp_latch",
    name = "Latch",
    type = "cc",
    number = 109,
    default_value = 1, 
    items = {"Off","On"},
    item_values = {0,1}
  },
  Parameter {
    id = "arp_rhythm",
    name = "Rhythm",
    type = "cc",
    number = 119,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 31,
    min_value = 0,
    max_value = 31
  },
  Parameter {
    id = "arp_swing",
    name = "Swing",
    type = "cc",
    number = 116,
    default_value = 0,
    display_min_value = 3,
    display_max_value = 97
  },
  Parameter {
    id = "arp_note_mode",
    name = "Note Mode",
    type = "cc",
    number = 118,
    default_value = 1,
    items = {"Up","Down","UpDown1","UpDown2","Played","Random","Play","Record"},
    item_values = {0,1,2,3,4,5,6,7},
    gui_type = "dropdown"
  },
  Parameter {
    id = "arp_octaves",
    name = "Octaves",
    type = "cc",
    number = 111,
    default_value = 1, 
    items = {"1","2","3","4"},
    item_values = {1,2,3,4}
  }  
}

-- AFTERTOUCH --
local group_aftertouch = Group {
  name = "Aftertouch",
  Parameter {
    id = "aftertouch_filter_freq",
    name = "Filter Freq",
    type = "nrpn",
    number = 74,
    default_value = 63,
    display_min_value = -63,
    display_max_value = 63
  },
  Parameter {
    id = "lfo_1_to_osc_pitch",
    name = "LFO 1 to Osc Pitch",
    type = "nrpn",
    number = 75,
    default_value = 64,
    display_min_value = -63,
    display_max_value = 63
  },
  Parameter {
    id = "aftertouch_lfo_2_speed",
    name = "LFO 2 Speed",
    type = "nrpn",
    number = 76,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 127
  }
}

-- MOD WHEEL --
local group_modwheel = Group {
  name = "Mod Wheel",
  Parameter {
    id = "mod_wh_lfo_2_filter",
    name = "LFO 2 Filter Freq",
    type = "nrpn",
    number = 71,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 127
  },
  Parameter {
    id = "mod_wh_lfo_1_to_osc_pitch",
    name = "LFO 1 to Osc Pitch",
    type = "nrpn",
    number = 70,
    default_value = 63,
    display_min_value = -63,
    display_max_value = 63
  },
  Parameter {
    id = "mod_wh_osc_2_pitch",
    name = "OSC 2 Pitch",
    type = "nrpn",
    number = 78,
    default_value = 63,
    display_min_value = -63,
    display_max_value = 63
  }
}

-- OTHER --
local group_other = Group {
  name = "Other",
  Parameter {
    id = "mod",
    name = "Mod",
    type = "cc",
    number = 0,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 127
  },
  Parameter {
    id = "sustain",
    name = "Sustain",
    type = "cc",
    number = 64,
    default_value = 0,
    display_min_value = 0,
    display_max_value = 127
  },
  Parameter {
    id = "pitchend",
    name = "Pitchbend",
    type = "pitchbend",
  }
}

-- Synth definition -----------------------------------------------------------
return SynthDefinition {
  id = "novation_bass_station_ii",
  name = "Novation Bass Station II",
  author = "PBF [pbf@severeddigit.ca]",
  beta = true,
  omit_nrpn_lsb = true,
  content_height = 800,
  Section {
      name = "Main",
        sysex_message_template = { 0xf0, 0x00, 0x20, 0x29, 0x00, 0x33, 0x00, 0x40, 0xf7},
        group_oscillator_1,
        group_oscillator_2,
        group_sub_oscillator,
        group_portamento,               
        group_filter,
        group_mixer,
        group_envelope,
        group_lfo_1,
        group_lfo_2,
        group_effects,
        group_arp,
      },
   Section {
        name = "Other",
        group_velocity,
        group_aftertouch,
        group_modwheel,
        group_other       
  }
}
