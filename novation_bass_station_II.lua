-- OSCILLATOR 1 --
local group_oscillator_1 = Group {
  name = "Oscillator 1",
  Parameter {
    id = "osc_1_range",
    name = "Range",
    type = "cc",
    number = 70,
    default_value = 1,
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
    items = {"sine","tri","saw","pulse"},
    item_values = {0,1,2,3},
  },
    Parameter {
    id = "osc_1_mod_env_depth",
    name = "Mod Env Depth",
    type = "cc",
    number = 71,
    default_value = 63, 
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
    default_value = 63, 
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


-- Filter group
local group_filter = Group {
  name = "Filter",
    Parameter {
    id = "filter_frequency",
    name = "Frequency",
    type = "cc",
    number = 16,
    default_value = 65, 
    display_min_value = 0,
    display_max_value = 255
  }
}




-- VCO 1 group
local group_vco1 = Group {
  name = "VCO 1",
  Parameter {
    id = "switch_example",
    name = "Switch example",
    number = 11,
    default_value = 2,
    items = {"16'","8'","4'","2'"}
  },
  Parameter {
    id = "button_example",
    name = "Button example",
    number = 10,
    items = {"Click"},
    item_values = {127}
  },  
  Parameter {
    id = "pitchbend_example",
    name = "Pitchbend example",
    type = "pitchbend"
  },
  Parameter {
    id = "callback_function_example",
    name = "Callback example",
    number = 16,
    items = {"16'","8'","4'","2'"},
    item_values = {0,32,64,96},
    value_callback = function(parameter,midi_value)
      local synth_definition = parameter.synth_definition
      --Here's how to change the value of a parameter:
      --synth_definition.parameters["pitchbend_example"]:value(500)
      --synth_definition.parameters["switch_example"]:value(0)
      --synth_definition.parameters["dropdown_example"]:value(32)
      local other_parameter = synth_definition.parameters["switch_example"]
      return parameter:value() + other_parameter:value()
    end
  },
  Parameter {
    id = "dropdown_example",
    name = "dropdown example",
    number = 11,
    default_value = 2,
    items = {"Long text","Here too","And here","Garrhh"},
    item_values = {0,32,64,96},
    gui_type = "dropdown"
  },
  Parameter {
    id = "device_id_example",
    name = "device id example",
    number = 1,
    sysex_message_template = {0xf0, 0x00, 0x20, 0x29, 0x00, 0x33, 0x00, 0x40, 0xf7},
  }
}

-- VCF group
local group_vcf = Group {
  name = "VCF",
  Parameter {
    id = "slider_example",
    name = "Slider example",
    number = 16,
    default_value = 10,
    randomize_min = 0,
    randomize_max = 20,
    display_min_value = -64,
    display_max_value = 63
  },
  Parameter {
    id = "cc_parameter_example",
    name = "CC example",
    type = "cc",
    number = 14,
    display_min_value = -50,
    display_max_value = 250
  },
  Parameter {
    id = "nrpn_parameter_example",
    name = "NRPN example",
    type = "nrpn",
    number = 227
  }
}

local group_dropdown_selection = Group {
  name = "Effect",
  Parameter {
    id = "dropdown_effect",
    name = "Effect",
    number = 10,
    gui_type = "dropdown",
    items = {"Reverb","Delay"},
    value_callback = function(parameter,midi_value)
      local vb = parameter.synth_definition.view_builder
      if parameter:value() == 0 then
        vb.views["label_effect_param_1"].text = "Size"
        vb.views["label_effect_param_2"].text = ""
        vb.views["effect_param_1"].active = true
        vb.views["effect_param_2"].active = false
      elseif parameter:value() == 1 then
        vb.views["label_effect_param_1"].text = "Time"
        vb.views["label_effect_param_2"].text = "Stereo"
        vb.views["effect_param_1"].active = true
        vb.views["effect_param_2"].active = true
      end
    end
  },  
  Parameter {
    id = "effect_param_1",
    name = "Effect param 1",
    type = "cc",
    number = 14
  },
  Parameter {
    id = "effect_param_2",
    name = "Effect param 2",
    type = "cc",
    number = 15
  }
}

-- Synth definition
return SynthDefinition {
  id = "novation_bass_station_ii",
  name = "Novation Bass Station II",
  author = "PBF [pbf@severeddigit.ca]",
  beta = true,
  --delay_between_midi_messages = 10,
  omit_nrpn_lsb = true,
  content_height = 800,
  Section {
    sysex_message_template = { 0xf0, 0x00, 0x20, 0x29, 0x00, 0x33, 0x00, 0x40, 0xf7},
    group_oscillator_1,
    group_oscillator_2,
    group_filter
   -- group_vco1,
    --group_vcf,
    --group_dropdown_selection
  }
}
